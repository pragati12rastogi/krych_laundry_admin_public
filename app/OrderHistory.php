<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderHistory extends Model
{
    protected $fillable = [
        'order_id', 'delivery_boy_id', 'status','created_at','updated_at'
    ];
}
