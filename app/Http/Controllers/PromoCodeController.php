<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PromoCode;
use DB;

class PromoCodeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $input = $request->all();
        if($input['lang'] == 'en'){
            $data = DB::table('promo_codes')->where('promo_codes.status',1)
                ->select('promo_codes.id','promo_codes.promo_name','promo_codes.promo_code','promo_codes.description','promo_types.type_name','promo_codes.discount')
                ->join('promo_types','promo_types.id','=','promo_codes.promo_type')->get();


        }else{
            $data = PromoCode::where('status',1)->select('id','promo_name_ar as promo_name','promo_code','description_ar as description','promo_type','discount','status')->get();
        }
        return response()->json([
            "result" => $data,
            "count" => count($data),
            "message" => 'Success',
            "status" => 1
        ]);
    }
    public function select(Request $req){
        $promo_id = $req->promo_id;
        $cart_id = $req->cart_id;
        $cart = DB::table('user_carts')->where('id',$cart_id)->first();
        if (empty($cart)){return ['status' => 0,'message' => 'cart not found'];}
        $promo = DB::table('promo_codes')->where('id',$promo_id)->where('status',1)->first();
        if (empty($promo)){return ['status' => 0,'message' => 'not a valid promo code'];}
        if ($promo->promo_type == 2){
            $discount_amount = ((float)$cart->subtotal * (float)$promo->discount)/100;
        }else{
            $discount_amount = (float)$promo->discount;
        }
        $total_amt = (float)$cart->subtotal - $discount_amount;
        $update = [
            'discount' => $discount_amount,
            'promocode_id' => $promo_id,
            'total_amt' => $total_amt,
        ];
        if (DB::table('user_carts')->where('id',$cart_id)->update($update)){
            return ['status' => 1,'message' => 'promo applied!'];
        }return ['status' => 0 , 'message' => 'some internal issue'];
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
        //
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
}
