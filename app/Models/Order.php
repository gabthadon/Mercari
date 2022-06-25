<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;


    protected $fillable = [
        'ref',
        'customer_id',
        'name',
        'amount',
        'quantity',
        'status',
        'trans_id'
    ];

    
}
