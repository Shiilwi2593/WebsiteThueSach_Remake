<?php
namespace App\Design_patterns\Strategy\Category;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Design_patterns\Strategy\IUpdateStrategy;

class UpdateCategory implements IUpdateStrategy
{
    public function update(Request $request, $category)
    {
        $category->update([
            'name' => $request->name,
            'slug' => $request->slug,
            'status' => $request->status,
        ]);

        return true; 
    }
}