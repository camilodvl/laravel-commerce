<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{

    protected $table = 'orders';

    protected $fillable = [
        'email'
    ];

    public function products(){
        return $this->belongsToMany(Product::class);
    }

}
