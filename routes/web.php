<?php

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\UsersController;
use App\Http\Controllers\Admin\ProductsController;
use App\Http\Controllers\Client\ProductsController as ClientProductsController;
use App\Http\Controllers\Admin\CategoriesController;
use App\Http\Controllers\Admin\OrdersController;
use App\Http\Controllers\Admin\OriginsController;
use App\Http\Controllers\Admin\PublishersController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Client\CartsController;
use App\Http\Controllers\Client\HomePageController;
use App\Http\Controllers\Client\InformationController;
use App\Http\Controllers\Client\LikedProductsController;
use App\Http\Controllers\Client\OrdersController as ClientOrdersController;
use App\Http\Controllers\Client\UsersController as ClientUsersController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
//HOME
Route::get('/', [HomePageController::class, 'index'])->name('/');
Route::get('aboutUs', [InformationController::class, 'aboutUs'])->name('aboutUs');

//ROUTE VIETNAMESE
Route::get('vnHome', [HomePageController::class, 'vnIndex'])->name('vnHome');
Route::get('vnAboutUs', [InformationController::class, 'vnAboutUs'])->name('vnAboutUs');

//ROUTE ADMIN
Route::prefix('admin')->middleware(['checkLogin', 'isAdmin', 'checkStatus'])->name('admin.')->group(function () {
    Route::get('/', [AdminController::class, 'vnIndex'])->name('index');
    Route::get('/index', [AdminController::class, 'index']);
    Route::get('/vnIndex', [AdminController::class, 'vnIndex']);
    Route::resource('users', UsersController::class);
    Route::get('/vnUsers', [UsersController::class, 'vnIndex'])->name('vnUsersIndex');
    Route::get('/vnUsers/{user}', [UsersController::class, 'vnShow']);
    Route::get('/vnUsers/{user}/edit', [UsersController::class, 'vnEdit']);
    Route::prefix('users')->controller(UsersController::class)->name('users.')->group(function () {
        Route::post('/changeStatus/{user}', 'changeStatus')->name('changeStatus');
        Route::get('/vnCreate', 'vnCreate')->name('vnCreate');
    });
    //ORDERS MANAGER
    Route::resource('orders', OrdersController::class);
    Route::get('/vnOrders', [OrdersController::class, 'vnIndex'])->name('vnOrdersIndex');
    Route::get('/export-products',[OrdersController::class, 'export'])->name('export');
    Route::post('admin/orders/changeStatus/{productInOrder}/{status}/{returnedAll?}', 'OrderController@changeStatus')->name('admin.orders.changeStatus');
    Route::get('/orders/filter', [OrdersController::class, 'filterOrders'])->name('orders.filter');
    //ORDER
    Route::prefix('orders')->controller(OrdersController::class)->name('orders.')->group(function () {
        Route::get('/order_detail/{order}', 'orderDetail')->name('order_detail');
        Route::get('/changeStatus/{productInOrder}/{status}/{returnedAll?}', 'changeStatus')->name('changeStatus');
    });
    //PRODUCT
    Route::resource('products', ProductsController::class);
    Route::get('/vnProducts', [ProductsController::class, 'vnIndex'])->name('vnProductsIndex');
    Route::get('/vnProducts/{product}', [ProductsController::class, 'vnShow'])->name('vnShow');
    Route::get('/vnProducts/{product}/edit', [ProductsController::class, 'vnEdit'])->name('vnEdit');
    Route::prefix('categories')->controller(CategoriesController::class)->name('categories.')->group(function () {
        Route::post('/changeStatus/{category}', 'changeStatus')->name('changeStatus');
        Route::post('/getSlug', 'getSlug')->name('getSlug');
    });
    //CATEGORIES
    Route::get('/vnCategories', [CategoriesController::class, 'vnIndex'])->name('vnCategories');
    Route::get('/vnCategories/{categorie}', [CategoriesController::class, 'vnShow']);
    Route::get('/vnCategories/{categorie}/edit', [CategoriesController::class, 'vnEdit']);
    Route::resource('categories', CategoriesController::class);
    //PRODUCT
    Route::prefix('products')->controller(ProductsController::class)->name('products.')->group(function () {
        Route::post('/changeStatus/{product}', 'changeStatus')->name('changeStatus');
        Route::post('/getSlug', 'getSlug')->name('getSlug');
        Route::post('/getRentPrices', 'getRentPrices')->name('getRentPrices');
        Route::delete('/deleteReview/{review}', 'deleteReview')->name('deleteReview');
    });
    //PUBLISHERS
    Route::resource('publishers', PublishersController::class);
    Route::get('/vnPublishers', [PublishersController::class, 'vnIndex'])->name('vnPublishers');
    Route::get('/vnPublishers/{publisher}', [PublishersController::class, 'vnShow'])->name('vnShowPublisher');
    Route::get('/vnPublishers/{publisher}/edit', [PublishersController::class, 'vnEdit'])->name('vnEditPublisher');
    Route::prefix('publishers')->controller(PublishersController::class)->name('publishers.')->group(function () {
        Route::post('/changeStatus/{publisher}', 'changeStatus')->name('changeStatus');
        Route::post('/getSlug', 'getSlug')->name('getSlug');
    });
    //ORIGINS    
    Route::resource('origins', OriginsController::class);
    Route::get('/vnOrigins', [OriginsController::class, 'vnIndex'])->name('vnOrigins');
    Route::get('/vnOrigins/{origin}', [OriginsController::class, 'vnShow'])->name('vnShowOrigin');
    Route::get('/vnOrigins/{origin}/edit', [OriginsController::class, 'vnEdit'])->name('vnEditOrigin');
    Route::prefix('origins')->controller(OriginsController::class)->name('origins.')->group(function () {
        Route::post('/changeStatus/{origin}', 'changeStatus')->name('changeStatus');
        Route::post('/getSlug', 'getSlug')->name('getSlug');
    });
});

//CLIENT
Route::middleware('checkStatus')->name('client.')->group(function () {
    Route::get('/index', [HomePageController::class, 'index'])->name('index');

    //PRODUCT
    Route::prefix('/products')->controller(ClientProductsController::class)->name('products.')->group(function () {
        Route::get('/', 'index')->name('index');
        Route::get('/vn', 'vnIndex')->name('vnIndex');
        Route::get('/index', 'index');
        Route::get('/detail/{slug}', 'detail')->name('detail');
        Route::get('/vnDetail/{slug}', 'vnDetail')->name('vnDetail');
        Route::post('/postReview', 'postReview')->name('postReview');
        Route::get('/deleteReview/{review}', 'deleteReview')->name('deleteReview');
        Route::delete('/deleteReview/{review}', 'deleteReview')->name('deleteReview');
        Route::get('/getPrice/{product}/{quantity?}/{rent_time?}', 'getPrice')->name('getPrice');
        //
        // Route::post('/detail/{slug}', 'addComment')->name('add_comment');
        // Route::post('/comment', 'addCommentUser')->name('addCommentUser');
    });

    //ACCOUNT
    Route::prefix('account')->middleware('checkLogin')->group(function () {
        Route::controller(CartsController::class)->group(function () {
            Route::get('/cart', 'cart')->name('cart');
            Route::get('/vnCart', 'vnCart')->name('vnCart');
            Route::post('/setPickUpDate', 'setPickUpDate')->name('setPickUpDate');
            Route::get('/addToCart/{productId}/{qty?}/{rent_time?}', 'addToCart')->name('addToCart');
            Route::get('/removeFromCart/{productId}', 'removeFromCart')->name('removeFromCart');
            Route::get('/updateCart/{productId}/{qty?}/{rent_time?}', 'updateCart')->name('updateCart');
            Route::get('/removeCart', 'removeCart')->name('removeCart');
        });
        //lIKE PRODUCTS
        Route::controller(LikedProductsController::class)->group(function () {
            Route::get('/likedProducts', 'likedProducts')->name('likedProducts');
            Route::get('/vnLikedProducts', 'vnLikedProducts')->name('vnLikedProducts');
            Route::get('/addToLikedProducts/{productId}/{qty?}', 'addToLikedProducts')->name('addToLikedProducts');
            Route::get('/removeFromLikedProducts/{productId}', 'removeFromLikedProducts')->name('removeFromLikedProducts');
        });
        //ORDERS PRODUCTS
        Route::controller(ClientOrdersController::class)->group(function () {
            Route::get('/checkout', 'checkout')->name('checkout');
            Route::get('/vnCheckout', 'vnCheckout')->name('vnCheckout');
            Route::get('/placeOrder', 'placeOrder')->name('placeOrder');
            Route::get('/cancelOrder/{orderId}', 'cancelOrder')->name('cancelOrder');
            Route::get('/cancelOrderItem/{productInOrderId}', 'cancelOrderItem')->name('cancelOrderItem');
            Route::get('/orderHistory', 'orderHistory')->name('orderHistory'); 
            Route::get('/vnOrderHistory','vnOrderHistory')->name('vnOrderHistory');

            Route::post('/postExtendRentTime', 'postExtendRentTime')->name('postExtendRentTime');
            Route::get('/getItemTotal/{productInOrder}/{rent_time?}', 'getItemTotal')->name('getItemTotal');
            Route::middleware('checkOrderOwner')->group(function () {
                Route::get('/orderDetail/{order}', 'orderDetail')->name('orderDetail');
                Route::get('/vnOrderDetail/{order}', 'vnOrderDetail')->name('vnOrderDetail');
            });
            Route::get('/orderDetail/extendRentTime/{productInOrderId}', 'extendRentTime')->name('extendRentTime');
            Route::get('/orderDetail/vnExtendRentTime/{productInOrderId}', 'vnExtendRentTime')->name('vnExtendRentTime');
        });
        //excel
      
        //EDIT
        Route::controller(ClientUsersController::class)->name('users.')->group(function () {
            Route::get('', 'edit')->name('edit');
            Route::get('vn', 'vnEdit')->name('vnEdit');
            Route::post('/update', 'update')->name('update');
        });
    });
});
//selleer
Route::prefix('seller')->middleware(['checkLogin', 'isSeller', 'checkStatus'])->name('seller.')->group(function () {
    Route::get('/', [AdminController::class, 'vnIndex'])->name('index');
    Route::get('/index', [AdminController::class, 'index']);
    Route::get('/vnIndex', [AdminController::class, 'vnIndex']);
 
    //ORDERS MANAGER
    Route::resource('orders', OrdersController::class);
    Route::get('/vnOrders', [OrdersController::class, 'vnIndex'])->name('vnOrdersIndex');
    Route::get('/export-products',[OrdersController::class, 'export'])->name('export');
    Route::post('admin/orders/changeStatus/{productInOrder}/{status}/{returnedAll?}', 'OrderController@changeStatus')->name('admin.orders.changeStatus');
    Route::get('/orders/filter', [OrdersController::class, 'filterOrders'])->name('orders.filter');
    //ORDER
    Route::prefix('orders')->controller(OrdersController::class)->name('orders.')->group(function () {
        Route::get('/order_detail/{order}', 'orderDetail')->name('order_detail');
        Route::get('/changeStatus/{productInOrder}/{status}/{returnedAll?}', 'changeStatus')->name('changeStatus');
    });
    //PRODUCT
    Route::resource('products', ProductsController::class);
    Route::get('/vnProducts', [ProductsController::class, 'vnIndex'])->name('vnProductsIndex');
    Route::get('/vnProducts/{product}', [ProductsController::class, 'vnShow'])->name('vnShow');
    Route::get('/vnProducts/{product}/edit', [ProductsController::class, 'vnEdit'])->name('vnEdit');
    Route::prefix('categories')->controller(CategoriesController::class)->name('categories.')->group(function () {
        Route::post('/changeStatus/{category}', 'changeStatus')->name('changeStatus');
        Route::post('/getSlug', 'getSlug')->name('getSlug');
    });
    //CATEGORIES
    Route::get('/vnCategories', [CategoriesController::class, 'vnIndex'])->name('vnCategories');
    Route::get('/vnCategories/{categorie}', [CategoriesController::class, 'vnShow']);
    Route::get('/vnCategories/{categorie}/edit', [CategoriesController::class, 'vnEdit']);
    Route::resource('categories', CategoriesController::class);
    //PRODUCT
    Route::prefix('products')->controller(ProductsController::class)->name('products.')->group(function () {
        Route::post('/changeStatus/{product}', 'changeStatus')->name('changeStatus');
        Route::post('/getSlug', 'getSlug')->name('getSlug');
        Route::post('/getRentPrices', 'getRentPrices')->name('getRentPrices');
        Route::delete('/deleteReview/{review}', 'deleteReview')->name('deleteReview');
    });
    //PUBLISHERS
    Route::resource('publishers', PublishersController::class);
    Route::get('/vnPublishers', [PublishersController::class, 'vnIndex'])->name('vnPublishers');
    Route::get('/vnPublishers/{publisher}', [PublishersController::class, 'vnShow'])->name('vnShowPublisher');
    Route::get('/vnPublishers/{publisher}/edit', [PublishersController::class, 'vnEdit'])->name('vnEditPublisher');
    Route::prefix('publishers')->controller(PublishersController::class)->name('publishers.')->group(function () {
        Route::post('/changeStatus/{publisher}', 'changeStatus')->name('changeStatus');
        Route::post('/getSlug', 'getSlug')->name('getSlug');
    });
    //ORIGINS    
    Route::resource('origins', OriginsController::class);
    Route::get('/vnOrigins', [OriginsController::class, 'vnIndex'])->name('vnOrigins');
    Route::get('/vnOrigins/{origin}', [OriginsController::class, 'vnShow'])->name('vnShowOrigin');
    Route::get('/vnOrigins/{origin}/edit', [OriginsController::class, 'vnEdit'])->name('vnEditOrigin');
    Route::prefix('origins')->controller(OriginsController::class)->name('origins.')->group(function () {
        Route::post('/changeStatus/{origin}', 'changeStatus')->name('changeStatus');
        Route::post('/getSlug', 'getSlug')->name('getSlug');
    });
        });
// LOGIN ACCOUNT
Route::controller(AuthController::class)->group(function () {
    Route::get('/login', 'login')->name('login');
    Route::get('/vnLogin', 'vnLogin')->name('vnLogin');
    Route::post('/postLOgin', 'postLOgin')->name('postLogin');
    Route::get('/signup', 'signup')->name('signup');
    Route::post('/storeUser', 'storeUser')->name('storeUser');
    Route::get('/logout', 'logout')->name('logout');
});

//Router TermsOfService
Route::get('/term-of-service', function () {
    return view('client.pages.terms_of_service.termofservice');
})->name('term-of-service');

// EXPORT EXCEL
