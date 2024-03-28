<?php
namespace App\Design_patterns\Strategy\Product;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Design_patterns\Strategy\IUpdateStrategy;

class UpdateProduct implements IUpdateStrategy
{
    public function update(Request $request, $product)
    {
        $product_array = [
            'name' => $request->name,
            'slug' => $request->slug,
            'description' => $request->description,
            'short_description' => $request->short_description,
            'status' => $request->status,
            'price' => $request->price,
            'book_layout' => $request->book_layout,
            'author' => $request->author,
            'height' => $request->height,
            'width' => $request->width,
            'thickness' => $request->thickness,
            'number_of_pages' => $request->number_of_pages,
            'publish_year' => $request->publish_year,
            'publisher_id' => $request->publisher_id,
            'origin_id' => $request->origin_id,
            'weight' => $request->weight,
            'quantity' => $request->quantity,
            'updated_at' => now(),
        ];

        $check = $product->update($product_array);

        return $check;
    }
}