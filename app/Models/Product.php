<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';

    protected $fillable = [
        'category_id',
        'brand_id',
        'description',
        'name',
        'image',
        'price',
        'inventory',
        'seller_id',
    ];

    public function category() {
        return $this->belongsTo(Category::class);
    }

    public function brand() {
        return $this->belongsTo(Brand::class);
    }

    public function seller() {
        return $this->belongsTo(Seller::class);
    }

    public function orders(){
        return $this->belongsToMany(Order::class);
    }
}
