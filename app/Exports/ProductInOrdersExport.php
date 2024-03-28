<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;

class ProductInOrdersExport implements FromCollection
{
    protected $productInOrders;

    public function __construct($productInOrders)
    {
        $this->productInOrders = $productInOrders;
    }

    public function collection()
    {
        return $this->productInOrders;
    }
}
