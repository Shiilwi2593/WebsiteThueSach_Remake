<?php
namespace App\Design_patterns\Strategy;

use Illuminate\Http\Request;

interface IDestroyStrategy
{
    public function destroy($model);
}