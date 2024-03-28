<?php

    namespace App\Filters\Orders;

    use App\Models\ProductInOrder;

    class ByActive{
        public function handle($request, \Closure $next) {
            $builder = $next($request);
            if (request()->has('status')
            && (int)request()->query('status') === 1) {
                $statusFilter = [
                    ProductInOrder::STATUS_WAIT_FOR_PICK_UP, 
                    ProductInOrder::STATUS_PICKED_UP,
                    ProductInOrder::STATUS_RETURNED_GOOD,
                    ProductInOrder::STATUS_CANCEL,
                    ProductInOrder::STATUS_RETURNED_BAD,
                    ProductInOrder::STATUS_SOME_RETURNED_BAD,
                    ProductInOrder::STATUS_SOME_RETURNED_GOOD,
                ];
                return $builder
                ->where('productsInOrder', function ($query) use ($statusFilter) {
                    $query->where('status', $statusFilter);
                });
            }
            return $builder;
        }
    }

?>