<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Http\Requests\StoreCategoryRequest;
use App\Http\Requests\UpdateCategoryRequest;

class CategoryController extends Controller
{
    
    public function index()
    {
        return Category::all();
    }


    
    public function show(Category $category)
    {
        return $category;
    }

    
}
