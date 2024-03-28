<?php

namespace App\Design_patterns\Factory_method;

interface CreatorInterface
{
    public function create(array $data);
}