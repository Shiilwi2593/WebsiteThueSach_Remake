<?php

namespace App\Http\Controllers\Admin;
use App\Models\ProductInOrder;
use App\Models\User;
use App\Models\Orders;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    //
    public function index() {
        
        $today = Carbon::now()->toDateString();
        $userStatistics = [
            'total_users' => User::count(),
            'new_users' => User::whereMonth('created_at', now()->month)->count(),
        ];

        $totalRevenue = ProductInOrder::sum('product_price');
        $totalRevenueToday = DB::table('products_in_orders')
        ->whereDate('created_at', $today)
        ->sum('product_price');

        $totalOrders = DB::table('products_in_orders')->count();
        $totalOrdersToday = DB::table('products_in_orders')
        ->whereDate('created_at', $today)
        ->count();

        $dataOrders = DB::table('products_in_orders')
        ->selectRaw('status, count(status) as number')
        ->groupBy('status')->get();
        $arrayDatas = [];
        $arrayDatas[] = ['Status', 'Number'];
        foreach($dataOrders as $data){
            $arrayDatas[] = [$data->status, $data->number];
        }

        return view('admin.pages.index.index', [
            'arrayDatas' => $arrayDatas,
            'userStatistics' => $userStatistics,
            'totalRevenue' => $totalRevenue,
            'totalRevenueToday' => $totalRevenueToday,
            'totalOrders' => $totalOrders,
            'totalOrdersToday' => $totalOrdersToday,
        ]);
    }

    //
    public function vnIndex() {
        $today = Carbon::now()->toDateString();
        $userStatistics = [
            'total_users' => User::count(),
            'new_users' => User::whereMonth('created_at', now()->month)->count(),
        ];

        $totalRevenue = ProductInOrder::sum('product_price');
        $totalRevenueToday = DB::table('products_in_orders')
        ->whereDate('created_at', $today)
        ->sum('product_price');

        $totalOrders = DB::table('products_in_orders')->count();
        $totalOrdersToday = DB::table('products_in_orders')
        ->whereDate('created_at', $today)
        ->count();

        $order_statuses = [
            ProductInOrder::STATUS_WAIT_FOR_PICK_UP => 'Chờ lấy hàng',
            ProductInOrder::STATUS_PICKED_UP => 'Đã lấy hàng',
            ProductInOrder::STATUS_RETURNED_GOOD => 'Trả hàng tốt',
            ProductInOrder::STATUS_CANCEL => 'Đã hủy đơn',
            ProductInOrder::STATUS_RETURNED_BAD => 'Trả hàng tệ',
            ProductInOrder::STATUS_SOME_RETURNED_GOOD => 'Một số sản phẩm trả tốt',
            ProductInOrder::STATUS_SOME_RETURNED_BAD => 'Một số sản phẩm trả tệ',
        ];  
        
        $dataOrders = DB::table('products_in_orders')
        ->selectRaw('status, count(status) as number')
        ->groupBy('status')->get();
        $arrayDatas = [];
        $arrayDatas[] = ['Status', 'Number'];
        foreach($dataOrders as $data){
            $statusLabel = $order_statuses[$data->status];
            $arrayDatas[] = [$statusLabel, $data->number];
        }
        return view('admin.vn_pages.index.index', [
            'arrayDatas' => $arrayDatas,
            'userStatistics' => $userStatistics,
            'totalRevenue' => $totalRevenue,
            'totalRevenueToday' => $totalRevenueToday,
            'totalOrders' => $totalOrders,
            'totalOrdersToday' => $totalOrdersToday,
        ]);
    }
}
