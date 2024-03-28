<?php

namespace App\Exports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithTitle;
use Carbon\Carbon;

class OrdersAndProductInOrdersExport implements FromCollection, WithTitle
{
    protected $orders;
    protected $productInOrders;
    protected $users;

    public function __construct($users, $orders, $productInOrders)
    {
        $this->users = $users;
        $this->orders = $orders;
        $this->productInOrders = $productInOrders;
    }

    public function title(): string
    {
        return 'Orders';
    }

    public function collection(): Collection
    {
        $combinedData = $this->combineData($this->orders, $this->productInOrders, $this->users);
        return collect($combinedData);
    }

    private function combineData($orders, $productInOrders, $users)
    {
        $combinedData = [];
    
        foreach ($orders as $order) {
            $orderId = $order->id;
            $userId = $order->user_id;
    
            $user = $users->where('id', $userId)->first();
            $userInfo = $user->userInfo;

            foreach ($productInOrders as $productInOrder) {
                $productOrderId = $productInOrder->id;
                if ($productOrderId == $orderId) {
                    $combinedData[] = [
                        'order_id' => $orderId,
                        'order_created_at' => Carbon::parse($order->created_at)->format('Y-m-d H:i:s'),
                        'user_full_name' => $userInfo->first_name . ' ' . $userInfo->last_name,
                        'user_name' => $user->username,
                        'user_email' => $user->email,
                        'phone_number' => $user->phone_number,
                        'product_name' => $productInOrder->product_name,
                        'location' => $productInOrder->location,
                        'order_total' => $order->total,
                    ];
                }
            }
        }
        return $combinedData;
    }
}
