<?php

    namespace App\Filters\Orders;
    use App\Models\User;
    use App\Models\UserInfo;
    use App\Models\ProductInOrder;

    class ByKeyword
    {
        public function handle($request, \Closure $next) {
            $builder = $next($request);
    
            if (request()->has('keyword') && !empty(request()->query('keyword'))) {  
                return $builder->where(function ($query) {
                    $query->where('id', 'like', '%'.request()->query('keyword').'%')
                        // ->orWhere('created_at', 'like', '%'.request()->query('keyword').'%')
                        // ->orWhere('total', 'like', '%'.request()->query('keyword').'%')
                        
                        ->orWhereHas('user', function ($query){
                            $query->where('email', 'like', '%'.request()->query('keyword').'%')
                            ->orWhere('phone_number', 'like', '%'.request()->query('keyword').'%');
                        })
                        ->orWhereHas('user.userInfo', function ($query){
                            $query->where('first_name', 'like', '%'.request()->query('keyword').'%')
                            ->orWhere('last_name', 'like', '%'.request()->query('keyword').'%');
                            
                        })                        
                        ->orWhereHas('productsInOrder', function ($query) {
                            $query->where('status', 'like', '%'.request()->query('keyword').'%');
                        });
                });
            }
    
            return $builder;
        }
    }
?>