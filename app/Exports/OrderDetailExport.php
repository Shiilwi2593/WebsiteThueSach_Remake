<?php

namespace App\Exports;

use App\Models\Order;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class OrderDetailExport implements FromCollection, WithHeadings
{
    protected $order;

    public function __construct(Order $order)
    {
        $this->order = $order;
    }

    public function collection()
    {
        // Lấy dữ liệu của đơn hàng và chi tiết sản phẩm
        $orderData = $this->order->load('productsInOrder.product');

        // Tùy chỉnh dữ liệu nếu cần thiết
        $formattedOrderData = $this->formatOrderData($orderData);

        // Trả về collection dữ liệu
        return collect([$formattedOrderData]);
    }

    public function headings(): array
    {
        // Đặt tên cho các cột trong file Excel
        return [
            'Order ID',
            'User ID',
            'Total',
            // Thêm các cột khác tùy theo nhu cầu của bạn
            'Total Quantity',
            'Total Value',
            // ...
        ];
    }

    // Phương thức để tùy chỉnh định dạng dữ liệu
    protected function formatOrderData($orderData)
    {
        // Bạn có thể thực hiện bất kỳ xử lý nào ở đây để định dạng dữ liệu theo nhu cầu của mình

        // Ví dụ: Lấy tổng số lượng sản phẩm trong đơn hàng
        $totalQuantity = $orderData->productsInOrder->sum('product_quantity');

        // Tổng giá trị đơn hàng
        $totalValue = $orderData->productsInOrder->sum(function ($product) {
            return $product->product_quantity * $product->product_price;
        });

        return [
            'order_id' => $orderData->id,
            'user_id' => $orderData->user_id,
            'total' => $orderData->total,
            'total_quantity' => $totalQuantity,
            'total_value' => $totalValue,
            // Thêm các trường khác tùy theo nhu cầu của bạn
            // ...
        ];
    }
}
