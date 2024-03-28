<?php

namespace App\Design_patterns\Factory_method;

use App\Models\Origin;
use Illuminate\Http\Request;
use Carbon\Carbon;

class OriginCreator implements CreatorInterface
{
    protected $requestData;

    public function __construct(Request $request)
    {
        $this->requestData = $request;
    }

    public function create(array $data = [])
    {
        $data = $data ?: $this->getDataFromRequest();

        return Origin::create($data);
    }

    protected function getDataFromRequest()
    {
        return [
            'name' => $this->requestData->name,
            'slug' => $this->requestData->slug,
            'status' => $this->requestData->status,
            'created_at' => now(),
        ];
    }
}
