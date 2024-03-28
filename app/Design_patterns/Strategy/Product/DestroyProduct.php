<?php
namespace App\Design_patterns\Strategy\Product;

use App\Models\Product;
use App\Design_patterns\Strategy\IDestroyStrategy;

class DestroyProduct implements IDestroyStrategy
{
    public function destroy($product)
    {
        return $product->delete();
    }
}