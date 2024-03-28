<?php

namespace App\Design_patterns\Builder;

use Illuminate\Database\Eloquent\Builder;

interface FilterInterface
{
    public function applyAll(Builder $query);
}
