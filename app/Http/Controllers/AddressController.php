<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Validator;
use App\Address;
class AddressController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

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
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();

        $validator =  Validator::make($input,[
            'customer_id' => 'required',
            'address' => 'required',
            'door_no' => 'required',
            'latitude' => 'required',
            'longitude' => 'required'
        ]);

        if($validator->fails()){
            return $this->sendError($validator->errors());
        }

        $url = 'https://maps.googleapis.com/maps/api/staticmap?center='.$input['latitude'].','.$input['longitude'].'&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:L%7C'.$input['latitude'].','.$input['longitude'].'&key='.env('MAP_KEY');
            $img = 'static_map/'.md5(time()).'.png';
            file_put_contents('uploads/'.$img, file_get_contents($url));

        $input['static_map'] = $img;
        $input['status'] = 1;

        if (Address::create($input)) {
            return response()->json([
                "message" => 'Registered Successfully',
                "status" => 1
            ]);
        } else {
            return response()->json([
                "message" => 'Sorry, something went wrong !',
                "status" => 0
            ]);
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

        $validator =  Validator::make($input,[
            'id' => 'required'
        ]);

        if($validator->fails()){
            return $this->sendError($validator->errors());
        }

        $address = Address::where('id',$input['id'])->first();

        if ($address) {
            return response()->json([
                "result" => $address,
                "message" => 'Success',
                "status" => 1
            ]);
        } else {
            return response()->json([
                "message" => 'Sorry, something went wrong !',
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
    public function update(Request $request, $id)
    {
        $input = $request->all();

        $validator =  Validator::make($input,[
            'customer_id' => 'required',
            'address' => 'required',
            'door_no' => 'required',
            'latitude' => 'required',
            'longitude' => 'required'
        ]);

        if($validator->fails()){
            return $this->sendError($validator->errors());
        }

        $url = 'https://maps.googleapis.com/maps/api/staticmap?center='.$input['latitude'].','.$input['longitude'].'&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:S%7C'.$input['latitude'].','.$input['longitude'].'&key='.env('MAP_KEY');
            $img = 'static_map/'.md5(time()).'.png';
            file_put_contents('uploads/'.$img, file_get_contents($url));

        $input['static_map'] = $img;
        $input['status'] = 1;

        if (Address::where('id',$id)->update($input)) {
            return response()->json([
                "message" => 'Updated Successfully',
                "status" => 1
            ]);
        } else {
            return response()->json([
                "message" => 'Sorry, something went wrong !',
                "status" => 0
            ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete(Request $request)
    {
        $input = $request->all();

        $validator =  Validator::make($input,[
            'customer_id' => 'required',
            'address_id' => 'required'
        ]);

        if($validator->fails()){
            return $this->sendError($validator->errors());
        }
        $res = Address::where('id',$input['address_id'])->delete();
        if ($res) {
            $addresses = Address::where('customer_id',$input['customer_id'])->orderBy('created_at', 'desc')->get();
            return response()->json([
                "result" => $addresses,
                "message" => 'Deleted Successfully',
                "status" => 1
            ]);
        } else {
            return response()->json([
                "message" => 'Sorry, something went wrong !',
                "status" => 0
            ]);
        }
    }

    public function all_addresses(Request $request){

        $input = $request->all();

        $validator =  Validator::make($input,[
            'customer_id' => 'required'
        ]);

        if($validator->fails()){
            return $this->sendError($validator->errors());
        }

        $addresses = Address::where('customer_id',$input['customer_id'])->orderBy('created_at', 'desc')->get();

        if ($addresses) {
            return response()->json([
                "result" => $addresses,
                "message" => 'Success',
                "status" => 1
            ]);
        } else {
            return response()->json([
                "message" => 'Sorry, something went wrong !',
                "status" => 0
            ]);
        }
    }

    public function sendError($message) {
        $message = $message->all();
        $response['error'] = "validation_error";
        $response['message'] = implode('',$message);
        $response['status'] = "0";
        return response()->json($response, 200);
    }
     public function get_address($user_id){
        $address = DB::table('addresses')->select('id','door_no','address','latitude','longitude')->where('customer_id',$user_id)->get()->toArray();
        return array_reverse($address);
     }

}
