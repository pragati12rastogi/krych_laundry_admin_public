<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Order;
use App\OrderItem;
use App\PaymentResponse;
use App\Label;
use Validator;
use Kreait\Firebase;
use Kreait\Firebase\Factory;
use Kreait\Firebase\ServiceAccount;
use Kreait\Firebase\Database;
use App\FcmNotificationMessage;
class OrderController extends Controller
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
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' => 'required',
            'address_id' => 'required',
            'expected_delivery_date' => 'required',
            'total' => 'required',
            'discount' => 'required',
            'sub_total' => 'required',
            'promo_id' => 'required',
            'payment_mode' => 'required',
            'payment_response' => 'required',
            'items' => 'required'
        ]);

        if($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        $payment_response = $input['payment_response'];
        unset($input['payment_response']);
        $items = json_decode($input['items'], true);
        $date = explode('/',$input['expected_delivery_date']);
        $input['expected_delivery_date'] = $date[2].'-'.$date[1].'-'.$date[0];
        $input['expected_delivery_date'] = date('Y-m-d', strtotime($input['expected_delivery_date']));
        $order = Order::create($input);
        $order_id = str_pad($order->id, 5, "0", STR_PAD_LEFT);
        Order::where('id',$order->id)->update([ 'order_id'=>$order_id]);
        if (is_object($order)) {
            foreach ($items as $key => $value) {
                $value['order_id'] = $order->id;
                OrderItem::create($value);
            }
            if($input['payment_mode'] != 1){
                PaymentResponse::where('payment_response',$payment_response)->update(['order_id' => $order->id]);
            }

            return response()->json([
                "message" => 'Order Placed Successfully',
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
        //
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
        //
    }

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
    public function getOrder(Request $request){
        $order_id = $request->order_id;
        $order = DB::table('orders')
            ->select('orders.*','labels.label_name','payment_methods.payment_mode as payment_mode','payment_status.title as payment_status')
            ->join('payment_methods','payment_methods.id','=','orders.payment_mode')
            ->join('payment_status','payment_status.id','=','orders.payment_status')
            ->join('labels', 'labels.id', '=', 'orders.status')
            ->where('orders.id',$order_id)->first();
        if (empty($order)){return [];}
        $order->address_details = DB::table('addresses')->select('address','door_no')->where('id',$order->address_id)->first();
        unset($order->address_id);
        $order->order_products = DB::table('order_items')
            ->select('order_items.qty','order_items.price','products.product_name','services.service_name')
            ->join('products','products.id','=','order_items.product_id')

            ->join('services','services.id','=','order_items.service_id')
            ->where('order_items.order_id',$order_id)->get();
        return (array)$order;
    }

    public function getOrders(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        if($input['lang'] == 'en'){
            $DB_orders = DB::table('orders')
            ->join('addresses', 'addresses.id', '=', 'orders.address_id')
            ->join('labels', 'labels.id', '=', 'orders.status')
            ->join('payment_methods', 'orders.payment_mode', '=', 'payment_methods.id')
            ->select('orders.id','orders.order_id','payment_methods.payment_mode','addresses.address','addresses.door_no','orders.expected_delivery_date','orders.drop_time','orders.total','orders.discount','orders.sub_total','orders.status','orders.items','labels.label_name','orders.created_at','orders.updated_at')
            ->where('orders.customer_id',$input['customer_id'])
            ->orderBy('orders.created_at', 'desc')
            ->get();
            $orders = [];
            foreach ($DB_orders as $order){
                $time = str_replace(' ',':00 ',explode('to ',$order->drop_time)[1]);
                $order->expected_delivery_date = date('m/d/y H:i:s',strtotime(str_replace('00:00:00',$time,$order->expected_delivery_date)));
                $diff_in_hours = 0;
                if ($order->expected_delivery_date > date('m/d/y H:i:s')){
                    $from = \Carbon\Carbon::createFromFormat('m/d/y H:i:s', $order->expected_delivery_date);
                    $to = \Carbon\Carbon::now();
                    $diff_in_hours = $to->diffInSeconds($from);
                }
                $order->drop_duration =  $diff_in_hours ;
                $order->drop_time = $time;
                $orders[] = $order;
            }
        }else{
            $orders = DB::table('orders')
            ->join('addresses', 'addresses.id', '=', 'orders.address_id')
            ->join('labels', 'labels.id', '=', 'orders.status')
            ->join('payment_methods', 'orders.payment_mode', '=', 'payment_methods.id')
            ->select('orders.id','orders.order_id','payment_methods.payment_mode_ar as payment_mode','addresses.address','addresses.door_no','orders.expected_delivery_date','orders.total','orders.discount','orders.sub_total','orders.status','orders.items','labels.label_name_ar as label_name','orders.created_at','orders.updated_at')
            ->where('orders.customer_id',$input['customer_id'])
            ->orderBy('orders.created_at', 'desc')
            ->get();
        }
        foreach($orders as $key => $value){
            if($input['lang'] == 'en'){
                $item = DB::table('order_items')
                        ->join('services', 'services.id', '=', 'order_items.service_id')
                        ->join('products', 'products.id', '=', 'order_items.product_id')
                        ->select('order_items.id','order_items.service_id','order_items.product_id','order_items.qty','order_items.price','services.service_name','products.product_name')
                        ->where('order_items.order_id',$value->id)
                        ->get();
                $orders[$key]->items = $item;
            }else{
                $item = DB::table('order_items')
                        ->join('services', 'services.id', '=', 'order_items.service_id')
                        ->join('products', 'products.id', '=', 'order_items.product_id')
                        ->select('order_items.id','order_items.service_id','order_items.product_id','order_items.qty','order_items.price','services.service_name_ar as service_name','products.product_name_ar as product_name')
                        ->where('order_items.order_id',$value->id)
                        ->get();
                $orders[$key]->items = $item;
            }

        }
        if ($orders) {
            return response()->json([
                "result" => $orders,
                "count" => count($orders),
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

    public function order_status_change(Request $request){
        $input = $request->all();
        $validator = Validator::make($input, [
            'order_id' => 'required',
            'status' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        $order = Order::where('id',$input['order_id'])->first();
        if(is_object($order)){
            $old_label = Label::where('id',$input['status'])->first();
            Order::where('id',$input['order_id'])->update([ 'status' => $old_label->id ]);
            $serviceAccount = ServiceAccount::fromJsonFile(config_path().'/'.env('FIREBASE_FILE'));
            $firebase = (new Factory)
            ->withServiceAccount($serviceAccount)
            ->withDatabaseUri(env('FIREBASE_DB'))
            ->create();
            $database = $firebase->getDatabase();
            $database->getReference('delivery_partners/'.$order->delivered_by.'/orders/'.$order->id.'/status')
                ->set($old_label->id);
            $database->getReference('delivery_partners/'.$order->delivered_by.'/orders/'.$order->id.'/status_name')
                ->set($old_label->label_name);
            if($input['status'] != 7){
                $new_label = Label::where('id',$input['status']+1)->first();
                $database->getReference('delivery_partners/'.$order->delivered_by.'/orders/'.$order->id.'/new_status')
                ->set($new_label->id);
                $database->getReference('delivery_partners/'.$order->delivered_by.'/orders/'.$order->id.'/new_status_name')
                ->set($new_label->label_for_delivery_boy);
            }

            //fcm msg
            $order_status = Order::where('id',$input['order_id'])->value('status');
            $message = DB::table('fcm_notification_messages')->where('id',$order_status)->first();
            $customer_token = Customer::where('id',$order->customer_id)->value('fcm_token');
            $this->send_fcm($message->customer_title, $message->customer_description, $customer_token);

            $response['message'] = "Success";
            $response['status'] = 1;
            return response()->json($response, 200);
        }else{
            $response['message'] = "Invalid order id";
            $response['status'] = 0;
            return response()->json($response, 200);
        }



    }
}
