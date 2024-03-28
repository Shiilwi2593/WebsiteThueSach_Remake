<?php
namespace App\Design_patterns\Strategy;

use Illuminate\Http\Request;

interface IUpdateStrategy
{
    public function update(Request $request, $model);
}
