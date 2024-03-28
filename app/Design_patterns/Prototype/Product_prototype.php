<?php

namespace App\Design_patterns\Prototype;

use App\Http\Controllers\Client;
use App\Models\Product as ProductModel;



interface ProductPrototype {
    public function clone(): ProductPrototype;
}
class Product implements ProductPrototype
{
    private $name;
    private $image;
    private $description;
    private $price;

    public function ProductPrototype($name, $image, $description, $price)
    {
        $this->name = $name;
        $this->image = $image;
        $this->description = $description;
        $this->price = $price;
    }

    public function clone(): ProductPrototype
    {
        $productData = ProductModel::where('name', $this->name)->first();

        if ($productData) {
            
            return new Product(
                $productData->name,
                $productData->image,
                $productData->description,
                $productData->price
            );
        } else {
            return null;
        }
    }
    
}

