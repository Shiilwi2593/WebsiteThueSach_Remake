<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Product;

class HomePageController extends Controller
{
    //
    public function index()
    {
        //Welcome To Store Of OurBook
        $feature_products = Product::where('quantity', '>=', 1)
        ->take(8)
        ->get();
        return view('client.pages.index.index', [
            'feature_products' => $feature_products,
        ]);
    }
    public function vnIndex()
    {
        //
        $feature_products = Product::where('quantity', '>=', 1)
        ->take(8)
        ->get(); 
        return view('client.vn_pages.index.index', [
            'feature_products' => $feature_products,
        ]); 
    }
}
