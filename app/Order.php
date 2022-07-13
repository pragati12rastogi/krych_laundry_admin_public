<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = [
        'customer_id', 'address_id', 'expected_delivery_date','total','discount','sub_total','promo_id','delivered_by','payment_mode','order_id','status','items','created_at','updated_at'
    ];
}
