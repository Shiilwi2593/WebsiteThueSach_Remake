<?php
namespace App\Design_patterns\Strategy\Origin;

use App\Models\Origin;
use App\Design_patterns\Strategy\IDestroyStrategy;

class DestroyOrigin implements IDestroyStrategy
{
    public function destroy($origin)
    {
        return $origin->delete();
    }
}