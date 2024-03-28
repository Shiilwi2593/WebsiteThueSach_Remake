<?php

namespace App\Design_patterns\Builder;


use Illuminate\Database\Eloquent\Builder;

class ByKeyword implements FilterInterface
{
    protected $keyword;

    public function __construct($keyword)
    {
        $this->keyword = $keyword;
    }

    public function applyAll(Builder $builder)
    {
       
        if (!empty($this->keyword)) {
            return $builder->where(function ($query) {
                $query->orWhere('name', 'like', '%' . $this->keyword . '%')
                    ->orWhere('slug', 'like', '%' . $this->keyword . '%');  });
        }
       
        return $builder;
    } 
}