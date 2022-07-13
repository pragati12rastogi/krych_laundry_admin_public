<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    protected $fillable = [
        'customer_id', 'address', 'latitude','longitude','door_no','static_map','status'
    ];
}
