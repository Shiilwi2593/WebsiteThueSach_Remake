<nav id="top">
    <div class="header-nav">
        <div class="container">
            <div class="row">
                <div class="header-left">
                    <div class="pull-left">
                    </div>
                </div>
                <div class="content_header_right">
                    <div>
                        <p><a href="{{route('vnHome')}}">Chào mừng bạn {{ is_null(Auth::user()) ? '' : Auth::user()->userInfo->last_name. ',' }} 
                                đến với cửa hàng chúng tôi</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-top">
        <div class="container" id="my-dropdown-container">
            <div id="my-dropdown">
                <div class="container">
                    <div class="row" style="padding: 0 2%">
                        <h1><b>Danh mục sản phẩm</b></h1>
                    </div>
                    <div class="row">
                        @foreach ($feature_categories as $category)
                            <div class="col-sm-2 col" >
                                <!-- style="border:0.5px solid gray; border-radius:5px; margin:10px" -->
                                <a href="{{ route('client.products.vnIndex') }}?category={{ $category->slug }}">
                                    {{ $category->name }}
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="header-logo">
                    <div id="logo">
                        <a href="{{ route('vnHome') }}"><img src="{{ asset('client/image/catalog/logo.png') }}"
                                title="Your Store" alt="Your Store" class="img-responsive" /></a>
                    </div>
                </div>
                <nav class="col-sm-7 nav-container">
                    <div class="nav-inner">
                        <div id="menu" class="main-menu" style="display: block;">
                            <div id="my-menu">
                                <div id="menu-icon-container">
                                    <img src="{{ asset('client/image/ico_menu.svg') }}" alt="">
                                    <img id="dropdown-img" src="{{ asset('client/image/icon_seemore_gray.svg') }}"
                                        alt="">
                                </div>

                                <form class="search-wrapper" method="GET"
                                    action="{{ route('client.products.vnIndex') }}">
                                    <input id="search-input" name="keyword" type="text"
                                        value="{{ request()->keyword ?? '' }}"
                                        placeholder="Tìm kiếm sản phẩm...">
                                    <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                                </form>

                            </div>
                        </div>
                    </div>
                </nav>
                <div class="col-sm-4 header-right">
                    <div class="header-right-container">
                        <div class="dropdown">
                        <!-- <div class="fhs_top_languages no_cover fhs_dropdown_click fhs_mouse_point">
                            <div class="fhs_top_languages_button fhs_center_center">
	                        <span class="icon_store_default"></span>
	                        <span class="icon_seemore_gray" style="margin-left:4px;"></span>
                        </div>
                        <div class="fhs_top_languages_dropdown fhs_dropdown">
		    	    		<div lang="default" class="fhs_center_left fhs_mouse_point fhs_nowrap_one active">
		                    <span class="icon_store_default" style="width: 36px; margin-right: 8px;" lang="default"></span>
		                    <span lang="default" style="font-weight: bold;">VN</span>
		                </div>
	    		    	    <div lang="english" class="fhs_center_left fhs_mouse_point fhs_nowrap_one lang-flag-img-target">
		                    <span class="icon_store_english" style="width: 36px; margin-right: 8px;" lang="english"></span>
		                    <span lang="english" style="font-weight: bold;">EN</span>
		                </div> -->
                            <button class="dropbtn"><i class="fa-solid fa-globe" style="color: black; padding: 0"></i></button>
                            <div class="dropdown-content">
                                <a href="{{route('vnHome')}}">VN</a>
                                <a href="{{route('/')}}">UK</a>
                            </div>
                       </div>
                        <div class="col-sm-2 header-cart">
                            <div id="cart" class="btn-group btn-block">
                                <button type="button" data-toggle="dropdown" data-loading-text="Đang tải..."
                                    class="btn btn-inverse btn-block btn-lg dropdown-toggle"><i
                                        class="fa fa-shopping-cart"></i> <span
                                        id="cart-total">{{ $cart->count() }}</span></button>
                                <span class="cart"> Cart </span>
                                <div id="cart-products-container">
                                    <ul class="dropdown-menu pull-right cart-menu">
                                        @if (Auth::check())
                                            @if ($cart->count() > 0)
                                                <li>
                                                    <table class="table table-striped">
                                                        <tbody>
                                                            <tr>
                                                                <td class="text-center">
                                                                    <a
                                                                        href="{{ route('client.products.detail', ['slug' => $cart[0]->product->slug]) }}">
                                                                        <img src="{{ asset("images/products/{$cart[0]->product->productImages->firstWhere('type', 1)->image_url}") }}"
                                                                            alt="ut labore et dolore magnam aliquam quae"
                                                                            title="ut labore et dolore magnam aliquam quae"
                                                                            class="img-thumbnail" style="height: 80px">
                                                                    </a>
                                                                </td>
                                                                <td class="text-left">
                                                                    <a
                                                                        href="https://capricathemes.com/opencart/OPC01/OPC010003/OPC1/index.php?route=product/product&amp;product_id=40">{{ $cart[0]->product->name }}</a>
                                                                </td>
                                                                <td class="text-right"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </li>
                                                <li>
                                                    <div>
                                                        @if ($cart->count() > 1)
                                                            <table class="table table-bordered">
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="text-right">{{ $cart->count() - 1 }}
                                                                            Nhiều sản phẩm trong giỏ hàng</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        @endif
                                                        <div class="text-right button-container">
                                                            <a href="{{ route('client.cart') }}"
                                                                class="btn-primary addtocart"><strong>Đi tới
                                                                    giỏ hàng</strong></a>
                                                        </div>
                                                </li>
                                            @else
                                                <li>
                                                    <p class="text-center">Giỏ hàng của bạn đang trống!</p>
                                                </li>
                                            @endif
                                        @else
                                            <a href="{{route('vnLogin')}}" class="btn btn-primary">Đăng nhập để xem giỏ hàng</a>
                                        @endif
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div id="top-links" class="nav pull-right">
                            <ul class="list-inline">
                                <li class="dropdown myaccount"><a
                                        href="https://capricathemes.com/opencart/OPC01/OPC010003/OPC1/index.php?route=account/account"
                                    title="My Account" class="dropdown-toggle" data-toggle="dropdown"> <span
                                            class="account-toggle"></span></a>
                                    <ul class="dropdown-menu dropdown-menu-right myaccount-menu">
                                        @if (!Auth::check())
                                            <li><a href="{{ route('signup') }}">Đăng ký</a></li>
                                            <li><a href="{{ route('vnLogin') }}">Đăng nhập</a></li>
                                        @endif
                                        @if (!is_null(Auth::user()) && Auth::user()->level == 1)
                                        <li><a href="{{ route('admin.index') }}">Trang quản lý</a></li>
                                        @endif
                                        @if (!is_null(Auth::user()) && Auth::user()->level == 2)
                                        <li><a href="{{ route('seller.index') }}">Trang quản lý bán hàng</a></li>
                                        @endif
                                        @if (Auth::check())
                                        <li><a href="{{ route('client.vnLikedProducts') }}" id="wishlist-total"
                                                title="Wish List ({{ $liked_products->count() }})">
                                                <span class="hidden-xs">Danh sách yêu thích (<span
                                                        id="like-total">{{ $liked_products->count() }}</span>)</span>
                                            </a></li>
                                        <li><a href="{{route('client.vnOrderHistory')}}">Lịch sử đơn hàng</a></li>
                                        <li><a href="{{route('client.users.vnEdit')}}">Tài khoản của tôi</a></li>
                                        <li><a href="{{ route('logout') }}">Đăng xuất</a></li>
                                        @endif
                                    </ul>
                                </li>

                            </ul>
                        </div>
                        <div class="header-search">
                            <div class="search">
                                <div id="search" class="input-group">
                                    {{-- <div class="search_button">Tìm kiếm</div> --}}
                                    <div class="searchbox">
                                        <form class="search-wrapper" method="GET"
                                            action="{{ route('client.products.index') }}">
                                            <input id="search-input" name="keyword" type="text"
                                                value="{{ request()->keyword ?? '' }}"
                                                placeholder="Search for products...">
                                            <button type="submit"><i
                                                    class="fa-solid fa-magnifying-glass"></i></button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</nav>
