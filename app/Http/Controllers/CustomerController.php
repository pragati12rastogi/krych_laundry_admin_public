<?php

namespace App\Http\Controllers;

use App\Helper\NotiHelper;
use Illuminate\Http\Request;
use App\Customer;
use Validator;
use Illuminate\Support\Facades\Hash;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
use DB;

class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */

    public function otp(Request $request){
        $input = $request->all();
        $validator = Validator::make($input, [
            'phone_number' => 'required|numeric|digits_between:10,10',
            'otp' => 'required|numeric'
        ]);

        if ($validator->fails()) {
            return ['status' => 0,'message' => $validator->errors()->first(),'data' => []];
        }
        $customer = Customer::where('phone_number',$input['phone_number'])->first();
        if ($customer->otp === $input['otp']){
            $token = JWTAuth::fromUser($customer);
            if (is_object($customer)) {
                $customer->membership = DB::table('memberships')->select('title')->where('id',$customer->membership)->first();
                $customer->default_address = DB::table('addresses')->select('id','address','latitude','longitude')->where('id',$customer->default_address)->first();
                return [
                    "result" => $customer,
                    "token" => $token,
                    "message" => 'Otp verified Successfully',
                    "status" => 1
                ];
            } else {
                return [
                    "message" => 'Sorry, something went wrong !',
                    "status" => 0
                ];
            }
        }else{
            return ['status' => 0,'message' => 'Wrong Otp','data' => []];
        }

    }
    public function refreshToken(Request $request){
        $input = $request->all();

        $validator = Validator::make($input, [
            'phone_number' => 'required|numeric|digits_between:10,10',
        ]);
        if ($validator->fails()) {
            return ['status' => 0,'message' => $validator->errors()->first(),'data' => []];
        }
        $phone=$request->phone_number;

        $customer = Customer::where('phone_number',$phone)->first();
        $customer->membership = DB::table('memberships')->select('title')->where('id',$customer->membership)->first();
        $customer->default_address = DB::table('addresses')->select('id','address','latitude','longitude')->where('id',$customer->default_address)->first();

        $token = JWTAuth::fromUser($customer);
        return ['token' => $token , 'user' => $customer];
    }
    public function store(Request $request)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'customer_name' => 'required',
            'phone_number' => 'required|numeric|digits_between:10,10|unique:customers,phone_number',
            'email' => 'required|email|regex:/^[a-zA-Z]{1}/|unique:customers,email',
            'profile_picture' => 'image|mimes:jpeg,png,jpg,gif,svg'
        ]);

        if ($validator->fails()) {
            return ['status' => 0,'message' => $validator->errors()->first(),'data' => []];
        }
        $input['otp'] = mt_rand(100000, 999999);
        $input['status'] = 1;
        if ($request->hasFile('profile_picture')){
            $image = $request->file('profile_picture');
            $name = time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/uploads/images');
            $image->move($destinationPath, $name);
            $input['profile_picture'] = 'images/'.$name;
        }
        Customer::create($input);
        if(NotiHelper::sendOtpFunction($input['phone_number'],$input['otp'])){
            return ['status'=> 1,'message' => 'Verification otp sent on your phone','data' => []];
        }else{
            return ['status' => 0,'message' => 'Otp not sent','data' => []];
        }


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $input['id'] = $id;
        $validator = Validator::make($input, [
            'id' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        $result = Customer::select('id', 'customer_name','phone_number','email','profile_picture','status')->where('id',$id)->first();

        if (is_object($result)) {
            return response()->json([
                "result" => $result,
                "message" => 'Success',
                "status" => 1
            ]);
        } else {
            return response()->json([
                "message" => 'Sorry, something went wrong...',
                "status" => 0
            ]);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
//    public function update(Request $request, $id)
//    {
//        $input = $request->all();
//        $validator = Validator::make($input, [
//            'customer_name' => 'required',
//            'phone_number' => 'required|numeric|unique:customers,id,'.$id,
//            'email' => 'required|email|unique:customers,id,'.$id
//        ]);
//
//        if ($validator->fails()) {
//            return $this->sendError($validator->errors());
//        }
//        if($request->password){
//            $options = [
//                'cost' => 12,
//            ];
//            $input['password'] = password_hash($input["password"], PASSWORD_DEFAULT, $options);
//            $input['status'] = 1;
//        }else{
//            unset($input['password']);
//        }
//
//        if (Customer::where('id',$id)->update($input)) {
//            return response()->json([
//                "result" => Customer::select('id', 'customer_name','phone_number','email','profile_picture','status')->where('id',$id)->first(),
//                "message" => 'Success',
//                "status" => 1
//            ]);
//        } else {
//            return response()->json([
//                "message" => 'Sorry, something went wrong...',
//                "status" => 0
//            ]);
//        }
//
//    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function login(Request $request){

        $input = $request->all();
        $validator = Validator::make($input, [
            'phone_number' => 'required|numeric|digits_between:9,20',
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        $credentials = request(['phone_number']);
        $customer = Customer::where('phone_number',$credentials['phone_number'])->first();

        if (!($customer)) {
            return response()->json([
                "message" => 'Your number is not registered, please register',
                "status" => 0
            ]);
        }
        $input['otp'] = mt_rand(100000, 999999);
        if($customer->status == 1){
            Customer::where('id',$customer->id)->update([ 'fcm_token' => $input['fcm_token'],'otp' =>  $input['otp']]);
            if(NotiHelper::sendOtpFunction($input['phone_number'],$input['otp'])){
                return ['status'=> 1,'message' => 'Verification otp sent on your phone','data' => []];
            }else{
                return ['status' => 0,'message' => 'Otp not sent','data' => []];
            }
        }else{
            return response()->json([
                "message" => 'Your account has been blocked',
                "status" => 0
            ]);
        }


    }

//    public function profile_picture(Request $request){
//
//        $input = $request->all();
//        $validator = Validator::make($input, [
//            'customer_id' => 'required',
//            'profile_picture' => 'required|image|mimes:jpeg,png,jpg,gif,svg'
//        ]);
//
//        if ($validator->fails()) {
//            return $this->sendError($validator->errors());
//        }
//
//        if ($request->hasFile('profile_picture')) {
//            $image = $request->file('profile_picture');
//            $name = time().'.'.$image->getClientOriginalExtension();
//            $destinationPath = public_path('/uploads/images');
//            $image->move($destinationPath, $name);
//            if(Customer::where('id',$input['customer_id'])->update([ 'profile_picture' => 'images/'.$name ])){
//                return response()->json([
//                    "result" => Customer::select('id', 'customer_name','phone_number','email','profile_picture','status')->where('id',$input['customer_id'])->first(),
//                    "message" => 'Success',
//                    "status" => 1
//                ]);
//            }else{
//                return response()->json([
//                    "message" => 'Sorry something went wrong...',
//                    "status" => 0
//                ]);
//            }
//        }
//
//    }

//    public function forgot_password(Request $request){
//
//        $input = $request->all();
//        $validator = Validator::make($input, [
//            'email' => 'required|email|regex:/^[a-zA-Z]{1}/',
//        ]);
//
//        if ($validator->fails()) {
//            return $this->sendError($validator->errors());
//        }
//
//        $customer = Customer::where('email',$input['email'])->first();
//        if(is_object($customer)){
//            $otp = rand(1000,9999);
//            Customer::where('id',$customer->id)->update(['otp'=> $otp ]);
//            $mail_header = array("otp" => $otp);
//            $this->send_mail($mail_header,'Reset Password',$input['email']);
//            return response()->json([
//                "result" => Customer::select('id', 'otp')->where('id',$customer->id)->first(),
//                "message" => 'Success',
//                "status" => 1
//            ]);
//        }else{
//            return response()->json([
//                "message" => 'Invalid email address',
//                "status" => 0
//            ]);
//        }
//
//    }

//    public function reset_password(Request $request){
//
//        $input = $request->all();
//        $validator = Validator::make($input, [
//            'id' => 'required',
//            'password' => 'required'
//        ]);
//
//        if ($validator->fails()) {
//            return $this->sendError($validator->errors());
//        }
//
//        $options = [
//            'cost' => 12,
//        ];
//        $input['password'] = password_hash($input["password"], PASSWORD_DEFAULT, $options);
//
//        if(Customer::where('id',$input['id'])->update($input)){
//            return response()->json([
//                "message" => 'Success',
//                "status" => 1
//            ]);
//        }else{
//            return response()->json([
//                "message" => 'Invalid email address',
//                "status" => 0
//            ]);
//        }
//    }

    public function sendError($message) {
        $message = $message->all();
        $response['error'] = "validation_error";
        $response['message'] = implode('',$message);
        $response['status'] = "0";
        return response()->json($response, 200);
    }

    public function authenticate(Request $request)
    {
        $credentials = $request->only('phone_number');

        try {
            if (! $token = JWTAuth::attempt($credentials)) {
                return response()->json(['error' => 'invalid_credentials'], 400);
            }
        } catch (JWTException $e) {
            return response()->json(['error' => 'could_not_create_token'], 500);
        }

        return response()->json(compact('token'));
    }

    public function getAuthenticatedUser()
    {
        try {

            if (! $user = JWTAuth::parseToken()->authenticate()) {
                return response()->json(['user_not_found'], 404);
            }

        } catch (Tymon\JWTAuth\Exceptions\TokenExpiredException $e) {

            return response()->json(['token_expired'], $e->getStatusCode());

        } catch (Tymon\JWTAuth\Exceptions\TokenInvalidException $e) {

            return response()->json(['token_invalid'], $e->getStatusCode());

        } catch (Tymon\JWTAuth\Exceptions\JWTException $e) {

            return response()->json(['token_absent'], $e->getStatusCode());

        }

        return response()->json(compact('user'));
    }
    public function update_profile(Request $request){
        $validator = Validator::make($request->all(), [
            'user_id' => 'required',
            'customer_name' => 'required',
            'email' => 'required|email|regex:/^[a-zA-Z]{1}/',
            'profile_picture' => 'image|mimes:jpeg,png,jpg,gif,svg'
        ]);
        if ($validator->fails()) {
            return ['status' => 0,'message' => $validator->errors()->first(),'data' => []];
        }
        $user_id = $request->user_id;
        $user['customer_name'] = $request->customer_name;
        $user['email'] = $request->email;
        if ($request->hasFile('profile_picture')){
            $image = $request->file('profile_picture');
            $name = time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/uploads/images');
            $image->move($destinationPath, $name);
            $user['profile_picture'] = 'images/'.$name;
        }
        if (DB::table('customers')->where('id',$user_id)->update($user)){
            $new_details = DB::table('customers')->where('id',$user_id)->first();
            $new_details->default_address = DB::table('addresses')->where('id',$new_details->default_address)->first();
            return ['status'=>1,'message' => 'Profile details updated!',"data" => $new_details];
        }return ['status' => 0,'message' => 'Some internal error',];
    }
    public function notifications(Request $request){
       $user_id = $request->user_id;
       $notifications_db = DB::table('user_notifications')
           ->select('user_notifications.order_id','f_msg.status_image','f_msg.customer_title as title','f_msg.customer_description as desc','user_notifications.created_at','orders.id')
           ->join('fcm_notification_messages as f_msg','f_msg.id','=','user_notifications.fcm_msg_id')
           ->join('orders','orders.order_id','=','user_notifications.order_id')
           ->where('user_id',$user_id)->get();
       if (sizeof($notifications_db) > 0){
           $notifications= [];
           foreach ($notifications_db as $item){
               $item->created_at = date('H:i',strtotime($item->created_at));
               $notifications[] = $item;
           }

           return ['status' => 1 ,"data" => array_reverse($notifications)];
       }
       return ['status' => 0,'data' => []];
    }

}
