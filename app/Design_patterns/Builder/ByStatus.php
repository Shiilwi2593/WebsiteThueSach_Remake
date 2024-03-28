<?php

namespace App\Design_patterns\Builder;

use Illuminate\Database\Eloquent\Builder;

class ByStatus implements FilterInterface
{
    protected $status;

    public function __construct($status)
    {
        $this->status = $status;
    }

    public function applyAll(Builder $builder)
    {
        if (!is_null($this->status)) {
            return $builder->where('status', $this->status);
        }
        return $builder;
    }

}