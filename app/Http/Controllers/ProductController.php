<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Http\Resources\ProductResource;

class ProductController extends Controller
{

    public function index()
    {
       return ProductResource::collection(Product::cursorPaginate(10));  
    }

    public function show($id)
    {
        return Product::with('stocks')->find($id);
    }

    public function destroy(Product $product)
    {
        //
    }
}
