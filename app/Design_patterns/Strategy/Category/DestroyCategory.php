<?php
namespace App\Design_patterns\Strategy\Category;

use App\Models\Category;
use Illuminate\Http\Request;

use App\Design_patterns\Strategy\IDestroyStrategy;


class DestroyCategory implements IDestroyStrategy
{
    public function destroy($category)
    {
        return $category->delete();
    }
}