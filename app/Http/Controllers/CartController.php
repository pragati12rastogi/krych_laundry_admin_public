<?php

namespace App\Http\Controllers;

use App\Address;
use App\ServiceArea;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class CartController extends Controller
{
    //
    public function index($id): array
    {
        $cart = DB::table('user_carts')->where('user_id',$id)->where('cart_status','created')->first();
        if (!empty($cart)){
            $cart->cart_products = DB::table('cart_products')->select('cart_products.product_id','products.product_name','products.price','cart_products.unit','cart_products.mem_dis','cart_products.final_price','cart_products.qty','services.service_name')->join('products','products.id','=','cart_products.product_id')->join('services','services.id','=','products.service_id')->where('cart_id',$cart->id)->get();
        }
        return (array)$cart;
    }
    public function cart(Request $request): array
    {
        $product_id = $request->product_id;
        $qty = $request->qty;
        $user_id = $request->user_id;
        $user_details = DB::table('customers')->where('id',$user_id)->first();
        $pin_code = Address::where('id',$user_details->default_address)->value('pincode');
        $delivery_charge = ServiceArea::where('pincode',$pin_code)->value('delivery_changes') ?? 0;
        $membership = DB::table('memberships')->where('id',$user_details->membership)->first();
        $productDetails = DB::table('products')->join('units','units.id','=' , 'products.unit')->where('products.id',$product_id)->first();
        $checkCart = DB::table('user_carts')->where('user_id',$user_id)->where('cart_status','=','created')->first();
        if($checkCart){
            // cart already present
            $checkProduct = DB::table('cart_products')->where('cart_id',$checkCart->id)->where('product_id',$product_id)->first();
            if ($checkProduct) {
                // update product
                if ($qty == 0 or ($checkProduct->qty == 1 and $qty == -1)) {
                    // clear product at 0
                    DB::table('cart_products')
                        ->where('cart_id', $checkCart->id)
                        ->where('product_id', $product_id)->delete();
                    $subtotal = (float)$checkCart->subtotal - (float)$checkProduct->price;
                    $mem_total_discount = (float)$checkCart->mem_total_discount - (float)$checkProduct->mem_dis;

                    DB::table('user_carts')->update([
                        'subtotal' => $subtotal,
                        'total_amt' => $subtotal+$checkCart->delivery_changes,
                        'mem_total_discount' => $mem_total_discount,
                        'updated_at' => date('Y-m-d ,H:i:s')]);
                    return ['status' => 1, 'message' => 'product removed from cart'];

                } else {
                    if ($qty == -1) {
                        $new_qty = (int)$checkProduct->qty - 1;
                    } else {
                        $new_qty = (int)$checkProduct->qty + 1;
                    }
                    $mem_dis = 0;
                    if ($membership){
                        $mem_service_array = explode(',',$membership->service_id);
                        if(in_array($productDetails->service_id,$mem_service_array)) {
                            $mem_dis = ((float)$productDetails->price * $membership->discount) / 100;
                        }
                    }
                    $cal_price = (float)$productDetails->price - $mem_dis;
                    DB::table('cart_products')
                        ->where('cart_id', $checkCart->id)
                        ->where('product_id', $product_id)
                        ->update(['qty' => $new_qty,
                            'price' => (float)$productDetails->price * $new_qty,
                            'final_price' => $cal_price * $new_qty ,
                            'mem_dis' => $mem_dis * $new_qty
                        ]);
                    $allProducts = DB::table('cart_products')->where('cart_id', $checkCart->id)->get();
                    $subtotal = 0.0;
                    $total = $delivery_charge+$checkCart->additional_charges;
                    $mem_total_discount = 0;
                    foreach ($allProducts as $allProduct) {
                        $subtotal += (float)$allProduct->price;
                        $total += (float)$allProduct->final_price;
                        $mem_total_discount += (float)$allProduct->mem_dis;
                    }
                    DB::table('user_carts')
                        ->where('id',$checkCart->id)
                        ->update([
                        'subtotal' => $subtotal,
                        'total_amt' => $total,
                        'delivery_changes' => $delivery_charge,
                        'mem_total_discount' => $mem_total_discount,
                        'updated_at' => date('Y-m-d ,H:i:s')]);
                    return ['status' => 1, 'message' => 'count changed'];
                }
            }else{
                // insert product
                if ($qty == 0 or $qty < 0){
                    return ['status' => 0 , 'message' => 'product not present in cart'];
                }
                $mem_dis = 0;
                if ($membership){
                    $mem_service_array = explode(',',$membership->service_id);
                    if(in_array($productDetails->service_id,$mem_service_array)) {
                        $mem_dis = ((float)$productDetails->price * $membership->discount) / 100;
                    }
                }
                $cal_price = (float)$productDetails->price - $mem_dis;
                $data =[
                    'cart_id'=>$checkCart->id,
                    'product_id' => $product_id ,
                    'mem_dis' => $mem_dis ,
                    'qty' => $qty,
                    'price' => $productDetails->price,
                    'final_price' => $cal_price * $qty,
                    'unit' => $productDetails->unit_code
                ];
                $this->insert_products($data,$delivery_charge);
                return ['status' => 1 , 'message' => 'product added in cart'];
            }
        }else{
            //new cart
            $mem_dis = 0;
            if ($membership){
                $mem_service_array = explode(',',$membership->service_id);
                if(in_array($productDetails->service_id,$mem_service_array)) {
                    $mem_dis = ((float)$productDetails->price * $membership->discount) / 100;
                }
            }
            $subtotal = ((float)$productDetails->price - $mem_dis) * (int)$qty;
            $cart_id = DB::table('user_carts')->insertGetId([
                'user_id' => $user_id,
                'cart_status' => 'created',
                'mem_total_discount' => $mem_dis,
                'subtotal' => $subtotal,
                'total_amt' => $subtotal,
                'created_at' => date('Y-m-d H:i:s')
            ]);
            $cal_price = (float)$productDetails->price - $mem_dis;
            $data =[
                'cart_id'=>$cart_id,
                'product_id' => $product_id ,
                'mem_dis' => $mem_dis ,
                'qty' => $qty,
                'price' => $productDetails->price * $qty,
                'final_price' => $cal_price * $qty,
                'unit' => $productDetails->unit_code
            ];
            $this->insert_products($data,$delivery_charge);
            return ['status' => 1 , 'message' => 'product added in cart'];
        }
    }

    /**
     * @return bool type
     **/
    public function insert_products($data,$delivery_charge): bool
    {
        DB::table('cart_products')->insert($data);
        $allProducts = DB::table('cart_products')->where('cart_id',$data['cart_id'])->get();
        $user_carts = DB::table('user_carts')->where('id',$data['cart_id'])->first();
        $subtotal = 0.0;
        $total = $delivery_charge + $user_carts->additional_charges;
        $mem_total_discount = 0;
        foreach ($allProducts as $allProduct) {
            $subtotal += (float)$allProduct->price;
            $total += (float)$allProduct->final_price;
            $mem_total_discount += (float)$allProduct->mem_dis;
        }
        DB::table('user_carts')->where('id',$data['cart_id'])->update([
            'subtotal' => $subtotal,
            'total_amt' => $total,
            'delivery_changes' => $delivery_charge,
            'mem_total_discount' => $mem_total_discount,
            'updated_at' => date('Y-m-d ,H:i:s')
        ]);
        return true;
    }
    public function checkout(Request $request): array
    {
        $inputs = $request->all();
        $cart = DB::table('user_carts')->where('id',$inputs['cart_id'])->where('cart_status','created')
            ->where('user_id',$inputs['user_id'])->first();
        if (empty($cart)){return ['status'=>0,'message' => 'cart not found'];}
        $cart_products = DB::table('cart_products')->where('cart_id',$inputs['cart_id'])->get();
        $user_details=DB::table('customers')->where('id',$inputs['user_id'])->first();
        $dateTimeIns = date('Y-m-d H:i:s');
        $order = [
            'order_id' => 'ORD'.mt_rand(10000000, 99999999),
            'customer_id' => $inputs['user_id'],
            'address_id'=>$user_details->default_address,
            'expected_pickup_date'=>$cart->pickup_date,
            'expected_delivery_date'=>$cart->drop_date,
            'pickup_time'=>$cart->pickup_time,
            'drop_time'=>$cart->drop_time,
            'total' =>$cart->total_amt,
            'delivery_changes' => $cart->delivery_changes,
            'sub_total' =>$cart->subtotal,
            'discount' =>$cart->discount,
            'mem_total_discount' =>$cart->mem_total_discount,
            'payment_mode'=>$inputs['payment_method'],
            'payment_status' =>($inputs['payment_method'] == 2)?2:1 ,
            'items'=>count($cart_products),
            'created_at'=>$dateTimeIns,
            'updated_at'=>$dateTimeIns,
        ];
        $order_get_id = DB::table('orders')->insertGetId($order);
//        $order_get_id =2;
        if ($order_get_id){
            foreach ($cart_products as $cart_product){
                $product_details = DB::table('products')->where('id',$cart_product->product_id)->first();
                $order_products = [
                    'order_id'=>$order_get_id,
                    'product_id'=>$cart_product->product_id,
                    'service_id'=>$product_details->service_id,
                    'qty'=>$cart_product->qty,
                    'price'=>$cart_product->price,
                    'mem_dis'=>$cart_product->mem_dis,
                    'created_at'=>$dateTimeIns,
                    'updated_at'=>$dateTimeIns,
                ];
                DB::table('order_items')->insert($order_products);
            }
            DB::table('user_carts')->where('id',$inputs['cart_id'])->where('cart_status','created')
                ->where('user_id',$inputs['user_id'])->update(['cart_status'=>'ordered']);
            return ['status' => 1,'message' => 'order placed!','data'=>['order_id' => $order_get_id]];
        }
        return ['status' => 0,'message' => 'Order not placed internal error'];

    }
}
