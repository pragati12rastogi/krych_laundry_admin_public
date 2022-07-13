<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PaymentResponse extends Model
{
    protected $fillable = [
        'id', 'customer_id', 'order_id','payment_mode','payment_response'
    ];
}
