<?php

namespace App\Design_patterns\Strategy\Publisher;

use App\Models\Publisher;
use App\Design_patterns\Strategy\IDestroyStrategy;


class DestroyPublisher
{
    public function destroy($publisher)
    {
        return $publisher->delete();
    }
}