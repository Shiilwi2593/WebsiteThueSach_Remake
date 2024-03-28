<?php

namespace App\Design_patterns\Factory_method;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Origin;
use App\Models\Publisher;

class CreateFactory
{
    public static function make(string $type, Request $request): CreatorInterface
    {
        switch ($type) {
            case 'category':
                return new CategoryCreator($request);
            case 'origin':
                return new OriginCreator($request);
            case 'publisher':
                return new PublisherCreator($request);
            default:
                throw new \InvalidArgumentException('Invalid type specified');
        }
    }
}