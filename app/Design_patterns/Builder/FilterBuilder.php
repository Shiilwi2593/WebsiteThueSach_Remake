<?php

namespace App\Design_patterns\Builder;

use Illuminate\Database\Eloquent\Builder;

class FilterBuilder
{
    protected $filters = [];

    public function addFilter(FilterInterface $filter)
    {
        $this->filters[] = $filter;
        return $this;
    }

    public function applyFilters(Builder $query)
    {
        foreach ($this->filters as $filter) {
            $query = $filter->applyAll($query);
        }
        return $query;
    }
}