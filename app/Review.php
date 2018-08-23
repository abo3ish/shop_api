<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Product;

class Review extends Model
{
    protected $fillable = ['body','star','user_id','product_id'];
    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
