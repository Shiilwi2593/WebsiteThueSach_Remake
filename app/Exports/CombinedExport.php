<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\WithMultipleSheets;

class CombinedExport implements WithMultipleSheets
{
    use \Maatwebsite\Excel\Concerns\Exportable; // Thay đổi namespace của trait

    protected $users;
    protected $orders;
    protected $productInOrders;

    public function __construct($users, $orders, $productInOrders)
    {
        $this->users = $users;
        $this->orders = $orders;
        $this->productInOrders = $productInOrders;
    }

    public function sheets(): array
    {
        $sheets = [];

        // Sheet for Users
        // $sheets[] = new UsersExport($this->users);

        // Sheet for Orders and ProductInOrders combined
        $sheets[] = new OrdersAndProductInOrdersExport($this->users, $this->orders, $this->productInOrders);

        return $sheets;
    }
}