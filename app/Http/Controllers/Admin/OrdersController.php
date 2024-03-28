<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreOrderRequest;
use App\Http\Requests\UpdateOrderRequest;
use App\Filters\Orders\ByKeyword;
use App\Filters\Orders\ByActive;
use App\Models\Order;
use App\Models\Product;
use App\Models\ProductInOrder;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Pipeline;
use Illuminate\Support\Str;
use App\Models\User;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\CombinedExport;
class OrdersController extends Controller
{

    public function vnIndex()
    {  
        $statusFilter = request()->status;
        $sortBy = request()->sort_by;
        $orderBy = [];
        $ordersQuery = Order::query();
        if (!is_null(request()->status)) {
            $statusFilter = request()->status;
            $ordersQuery->whereHas('productsInOrder', function ($subQuery) use ($statusFilter) {
                $subQuery->where('status', $statusFilter);
            });
        }
        $ordersQuery->when(request()->sort_by, function ($query) {
            $sortBy = request()->sort_by;
            $query->orderBy('created_at', ($sortBy == 0) ? 'desc' : 'asc');
        });
        $ordersQuery->when(request()->has('keyword') && !empty(request()->query('keyword')), function ($query) {
            $keyword = request()->query('keyword');
            $query->where(function ($innerQuery) use ($keyword) {
                $innerQuery->where('id', 'like', "%$keyword%")
                    ->orWhereHas('user', function ($userQuery) use ($keyword) {
                        $userQuery->where('email', 'like', "%$keyword%")
                        ->orWhere('phone_number', 'like', "%$keyword%");
                    })
                    ->orWhereHas('user.userInfo', function ($userInfoQuery) use ($keyword) {
                        $userInfoQuery->where('first_name', 'like', "%$keyword%")
                        ->orWhere('last_name', 'like', "%$keyword%");
                    });
            });
        });
        if (!is_null(request()->sort_by)) {
            switch (request()->sort_by) {
                case 0:
                    $orderBy = ['created_at', 'desc'];
                    break;
                case 1:
                    $orderBy = ['created_at', 'asc'];
                    break;

            }
        }       
        $today = Carbon::today()->format('Y-m-d');
        if ($sortBy == 2) {
            $today = Carbon::today();
            $ordersQuery->whereDate('created_at', $today->toDateString());
        }
        $pipelines = [
            ByKeyword::class,  
            ByActive::class,    
        ];

        $pipeline = Pipeline::send(Order::query())
            ->through($pipelines)
            ->thenReturn();
        if ($orderBy) {
            $orders = $pipeline->orderBy($orderBy[0], $orderBy[1])->paginate(10);
        } else {
            $orders = $pipeline->paginate(10);
        }  
        $currentMonth = null;
        if ($sortBy == 3) {
            $today = Carbon::today();
            $currentMonth = $today->format('Y-m');
            $ordersQuery->whereMonth('created_at', $today->month);
        }
        if (!$sortBy) {
            $ordersQuery->latest();
        }
    
        $orders = $ordersQuery->paginate(10);
        $order_statuses = [
            'wait_for_pick_up' => ProductInOrder::STATUS_WAIT_FOR_PICK_UP,
            'picked_up' => ProductInOrder::STATUS_PICKED_UP,
            'returned_good' => ProductInOrder::STATUS_RETURNED_GOOD,
            'cancel' => ProductInOrder::STATUS_CANCEL,
            'returned_bad' => ProductInOrder::STATUS_RETURNED_BAD,
            'some_returned_good' => ProductInOrder::STATUS_SOME_RETURNED_GOOD,
            'some_returned_bad' => ProductInOrder::STATUS_SOME_RETURNED_BAD,
        ];
        
        return view('admin.vn_pages.orders.index', [
            'orders' => $orders,
            'order_statuses' => $order_statuses,
            'today' => $today,
        ]);
    }



    
    public function export()
    {
        // Lấy dữ liệu từ các bảng cần xuất
        $users = User::all();
        $orders = Order::all();
        $productInOrders = ProductInOrder::all();

        // Tạo instance của class export và truyền dữ liệu người dùng
        $combinedExport = new CombinedExport($users, $orders, $productInOrders);

        // Xuất file Excel
        return Excel::download($combinedExport, 'combined_data.xlsx');
    }
    public function orderDetail(Order $order) {

        $today = Carbon::today()->format('Y-m-d');
        $order_statuses = [
            'wait_for_pick_up' => ProductInOrder::STATUS_WAIT_FOR_PICK_UP,
            'picked_up' => ProductInOrder::STATUS_PICKED_UP,
            'returned_good' => ProductInOrder::STATUS_RETURNED_GOOD,
            'cancel' => ProductInOrder::STATUS_CANCEL,
            'returned_bad' => ProductInOrder::STATUS_RETURNED_BAD,
            'some_returned_good' => ProductInOrder::STATUS_SOME_RETURNED_GOOD,
            'some_returned_bad' => ProductInOrder::STATUS_SOME_RETURNED_BAD,
        ];

        return view('admin.vn_pages.users.order_detail', [
            'order' => $order,
            'order_statuses' => $order_statuses,
            'today' => $today,
        ]);
    }
   
    public function vnOrderDetail(Order $order) {

        $today = Carbon::today()->format('Y-m-d');

        $order_statuses = [
            'wait_for_pick_up' => ProductInOrder::STATUS_WAIT_FOR_PICK_UP,
            'picked_up' => ProductInOrder::STATUS_PICKED_UP,
            'returned_good' => ProductInOrder::STATUS_RETURNED_GOOD,
            'cancel' => ProductInOrder::STATUS_CANCEL,
            'returned_bad' => ProductInOrder::STATUS_RETURNED_BAD,
            'some_returned_good' => ProductInOrder::STATUS_SOME_RETURNED_GOOD,
            'some_returned_bad' => ProductInOrder::STATUS_SOME_RETURNED_BAD,
        ];


        return view('admin.pages.users.order_detail', [
            'order' => $order,
            'order_statuses' => $order_statuses,
            'today' => $today,
        ]);
    }
    public function getSlug(Request $request) {
        $slug = Str::slug($request->name);
        return $slug;
    }


    
    public function changeStatus(ProductInOrder $productInOrder, $status, $returnedAll = false) {

        $all_products_returned = $productInOrder->returned_bad_quantity + $productInOrder->returned_good_quantity + 1 === $productInOrder->product_quantity;

        switch ($status) {

            case ProductInOrder::STATUS_PICKED_UP:
                $productInOrder->update([
                    'status' => $status,
                    'pick_up_date' => Carbon::today(),
                ]);
                break;


            case ProductInOrder::STATUS_RETURNED_BAD:
                
                $oldReturnedBadQuantity = $productInOrder->returned_bad_quantity;

                if ($returnedAll) {
                    $status = ProductInOrder::STATUS_RETURNED_BAD;
                    $returnedBadQuantity = $productInOrder->product_quantity - ($productInOrder->returned_good_quantity + $productInOrder->returned_bad_quantity);
                    $productInOrder->update([
                        'status' => $status,
                        'return_date' => Carbon::today(),
                        'returned_bad_quantity' => $returnedBadQuantity + $oldReturnedBadQuantity,
                    ]);
                
                } else {
                    if ($all_products_returned) {
                        $status = ProductInOrder::STATUS_RETURNED_BAD;
                    } else {
                        $status = ProductInOrder::STATUS_SOME_RETURNED_BAD;
                    }
                    $returnedBadQuantity = 1;
                    $productInOrder->update([
                        'status' => $status,
                        'return_date' => Carbon::today(),
                        'returned_bad_quantity' => $returnedBadQuantity + $oldReturnedBadQuantity,
                    ]);
                }

                $product = Product::where('id', $productInOrder->product_id)->first();

                if (!Carbon::today()->gt($productInOrder->expected_return_date)) {
                    $product->update([
                        'quantity' => $product->quantity - $returnedBadQuantity,
                    ]);
                }

                $productInOrder->update([
                    'deposit_return' => $productInOrder->deposit_return - ($returnedBadQuantity * $product->price),
                ]);


                break;
                

            case ProductInOrder::STATUS_RETURNED_GOOD:
                if ($returnedAll) {
                    if ($productInOrder->status === ProductInOrder::STATUS_SOME_RETURNED_BAD) {
                        $status = ProductInOrder::STATUS_RETURNED_BAD;
                    } else {
                        $status = ProductInOrder::STATUS_RETURNED_GOOD;
                    }
                    $oldReturnedGoodQuantity = $productInOrder->returned_good_quantity;
                    $returnedGoodQuantity = $productInOrder->product_quantity - ($productInOrder->returned_good_quantity + $productInOrder->returned_bad_quantity) + $oldReturnedGoodQuantity;
                    $productInOrder->update([
                        'status' => $status,
                        'return_date' => Carbon::today(),
                        'returned_good_quantity' => $returnedGoodQuantity,
                    ]);

                } else {

                    if ($all_products_returned) {
                        if ($productInOrder->status === ProductInOrder::STATUS_SOME_RETURNED_BAD) {
                            $status = ProductInOrder::STATUS_RETURNED_BAD;
                        } else {
                            $status = ProductInOrder::STATUS_RETURNED_GOOD;
                        }
                    } else {
                        if ($productInOrder->status === ProductInOrder::STATUS_SOME_RETURNED_BAD) {
                            $status = ProductInOrder::STATUS_SOME_RETURNED_BAD;
                        } else {
                            $status = ProductInOrder::STATUS_SOME_RETURNED_GOOD;
                        }
                    }
                    $returnedGoodQuantity = $productInOrder->returned_good_quantity + 1;
                    $productInOrder->update([
                        'status' => $status,
                        'return_date' => Carbon::today(),
                        'returned_good_quantity' => $returnedGoodQuantity,
                    ]);
                }
                if (Carbon::today()->gt($productInOrder->expected_return_date)) {
                    $product = Product::firstWhere('id', $productInOrder->product_id);
                    $oldProductQuantity = $product->quantity;
                    $productQuantity = $oldProductQuantity + $returnedGoodQuantity;
                    $product->update([
                        'quantity' => $productQuantity,
                    ]);
                }
                break;


            case ProductInOrder::STATUS_CANCEL:
                if ($productInOrder->status === ProductInOrder::STATUS_WAIT_FOR_PICK_UP) {
                    $productInOrder->update([
                        'status' => ProductInOrder::STATUS_CANCEL,
                    ]);
                }
                break;
        }

        if ($productInOrder) {
            return back()->with('message', '<div class="alert alert-success alert-dismissible">Item changed status successfully</div>');
        } else {
            return back()->with('message', '<div class="alert alert-danger alert-dismissible">Item changed status failed</div>');
        }

    }
}
