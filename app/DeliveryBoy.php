<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DeliveryBoy extends Model
{
    protected $fillable = [
        'id', 'delivery_boy_name', 'phone_number','email','profile_picture','status','otp','fcm_token'
    ];
}
