@extends('client.vn_pages.layout.master')

@section('body-class')
    class="common-home layout-1"
@endsection

@section('content')

    @if (session('message'))
    <script type="text/javascript">
        Swal.fire({
            icon: 'success',
            text: '{{session("message")}}',
        });
    </script>
    @endif
    <div class="content_headercms_top"></div>
    <div class="content-top-breadcum">
        <div class="container">
            <div class="row">
                <div id="title-content">
                </div>
            </div>
        </div>
    </div>


    <div class="main-slider">
        <div id="spinner"></div>
        <div id="slideshow0" class="owl-carousel" style="opacity: 1;">
            <div class="item">
                <a href="{{route('client.products.vnIndex')}}">
                    <img src="{{asset('client/image/cache/catalog/main-Banner-03-1920x737.jpg')}}" 
                         alt="Main-Banner-03"
                         class="img-responsive" />
                </a>
            </div>
        </div>
    </div>
    <script>
        // Can also be used with $(document).ready()
        $(window).load(function() {
            $("#spinner").fadeOut("slow");
        });
    </script>


    <div>
        <div id="subbannercmsblock">
            <div class="container">
                <div class="row">
                    <div class="subbaner-left col-sm-6">
                        <div class="banner">
                            <div class="content">
                                <div class="image-block"></div>
                                <div class="title">Sản phẩm đặc biệt</div>
                                <div class="button"><a href="{{route('client.products.vnIndex')}}">Mua ngay</a></div>
                            </div>
                            <div class="img"><a style="cursor: default"><img
                                        src="{{ asset('client/image/catalog/Sub-banner-01.jpg') }}"
                                        alt="Sub-banner-01.jpg')}}"></a></div>
                        </div>
                    </div>
                    <div class="subbaner-right col-sm-3">
                        <div class="banner">
                            <div class="content_left">
                                <div class="title">Sách số lượng lớn</div>
                                <div class="button"><a href="{{route('client.products.vnIndex')}}">Xem bộ sưu tập</a></div>
                            </div>
                            <div class="img"><a style="cursor: default"><img
                                        src="{{ asset('client/image/catalog/Sub-banner-02.jpg') }}"
                                        alt="Sub-banner-02.jpg')}}"></a></div>
                        </div>
                    </div>
                    <div class="subbaner-right col-sm-3">
                        <div class="banner">
                            <div class="content_right">
                                <div class="offer">Hàng tuần</div>
                                <div class="title">Các sản phẩm mới</div>
                                <div class="description">Lấy mã miễn phí ngay</div>
                            </div>
                            <div class="img"><a style="cursor: default"><img
                                        src="{{ asset('client/image/catalog/Sub-banner-03.jpg') }}"
                                        alt="Sub-banner-02.jpg')}}"></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
        </div>
    </div>
    <div id="content" class="col-sm-12">
        <div class="container">
            <div class="row">
                <!-- <div class="box">
                    <div class="box-heading">Các sản phẩm mới<sub>Tất cả sản phẩm ở đây</sub></div>
                    <div class="box-content">
                        <div class="box-product productbox-grid" id="featured-grid">
                            @foreach ($feature_products as $product)
                                <div class="product-items">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">
                                                <a href="{{ route('client.products.vnDetail', ['slug' => $product->slug]) }}">
                                                    <img src="{{ asset("images/products/{$product->productImages->where('type', 1)->first()->image_url}") }}"
                                                        alt="ut labore et dolore magnam aliquam quae"
                                                        title="ut labore et dolore magnam aliquam quae"
                                                        class="img-responsive" />
                                                    <img class="img-responsive hover-image"
                                                        src="{{ asset("images/products/{$product->productImages->where('type', 2)->first()->image_url}") }}"
                                                        alt="ut labore et dolore magnam aliquam quae" />
                                                </a>
                                                @if(Auth::check())
                                                <div class="button-group list">
                                                    <button type="button" class="wishlist"
                                                        title="Add to Wish List"
                                                        data-url="{{route('client.addToLikedProducts', ['productId' => $product->id])}}"><i
                                                            class="fa fa-heart"></i></button>
                                                    @if($product->quantity > 0)
                                                    <button class="addtocart" type="button" data-url="{{route('client.addToCart', ['productId' => $product->id])}}"
                                                        title="Add to Cart"><i
                                                            class="fa fa-cart-plus"></i><span>Thêm vào giỏ hàng</span></button>
                                                    @endif
                                                </div>
                                                @endif
                                            </div>
                                            <div class="product-details">
                                                <div class="caption">
                                                    <h4><a
                                                            href="index9144.html?route=product/product&amp;product_id=40">{{ $product->name }}</a>
                                                    </h4>
                                                    <p class="price">
                                                        {{ number_format($product->rentPrice->firstWhere('number_of_days', 7)->price) }}đ / 7 ngày
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div> -->

                <!--PHẦN 2-->

                <div class="box">
                    <div class="box-heading">CÁC SẢN PHẨM MỚI</div>
                    <div class="box-content">
                        <div class="box-product productbox-grid" id="featured-grid">
                            @foreach ($feature_products as $product)
                                <div class="product-items">
                                    <div class="product-block product-thumb transition">
                                        <div class="product-block-inner">
                                            <div class="image">

                                                <a href="{{ route('client.products.vnDetail', ['slug' => $product->slug]) }}">
                                                    <img src="{{ asset("images/products/{$product->productImages->where('type', 1)->first()->image_url}") }}"
                                                        alt=""
                                                        title=""
                                                        class="img-responsive" />
                                                        <img class="img-responsive hover-image"
                                                        src="{{ asset("images/products/{$product->productImages->where('type', 2)->first()->image_url}") }}"
                                                        alt="" />    
                                                </a>
                                                
                                                @if(Auth::check())
                                                <div class="button-group list">
                                                    <button type="button" class="wishlist"
                                                        title="Thêm vào yêu thích"
                                                        data-url="{{route('client.addToLikedProducts', ['productId' => $product->id])}}"><i
                                                            class="fa fa-heart"></i></button>
                                                    @if($product->quantity > 0)
                                                    <button class="addtocart" type="button" data-url="{{route('client.addToCart', ['productId' => $product->id])}}"
                                                        title="Thêm vào giỏ hàng"><i
                                                            class="fa fa-cart-plus"></i><span>Thêm vào giỏ hàng</span></button>
                                                    @endif
                                                </div>
                                                @endif
                                            </div>
                                            <div class="product-details">

                                                <div class="caption">
                                                    <h4><a
                                                            href="{{ route('client.products.vnDetail', ['slug' => $product->slug]) }}">{{ $product->name }}</a>
                                                    </h4>


                                                    <p class="price">
                                                        {{ number_format($product->rentPrice->firstWhere('number_of_days', 7)->price) }}đ / 7 ngày
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <span class="featured_default_width" style="display:none; visibility:hidden"></span>
        <!-- <div>
            <div id="cmsblock">
                <div class="container">
                    <div class="row">
                        <div class="cmsblock_inner_left">
                            <div class="banner">
                                <div class="img"><a href="{{route('client.products.vnIndex')}}"><img
                                            src="{{ asset('client/image/catalog/cms_banner_01.jpg') }}"
                                            alt="cms_banner_01.jpg')}}"></a></div>
                                <div class="content">
                                    <div class="title">Các sách đang có sẵn</div>
                                </div>
                            </div>
                        </div>
                        <div class="cmsblock_inner_right">
                            <div class="banner">
                                <div class="img"><a href="{{route('client.products.vnIndex')}}"><img
                                            src="{{ asset('client/image/catalog/cms_banner_02.jpg') }}"
                                            alt="cms_banner_02.jpg')}}"></a></div>
                                <div class="content">
                                    <div class="title">Sản phẩm</div>
                                    <div class="button"><a href="{{route('client.products.vnIndex')}}">!!</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
        <div>
            <!-- <div class="parallex" data-source-url="{{ asset('client/image/catalog/parallax.jpg') }}">
                <div id="parallex_img_top" class="scrollInTop">
                    <div class="img_top"></div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="parralax-content">
                            <div class="title">Tất cả sách thiếu nhi</div>
                        </div>
                        <div class="book-gallery carousel-style1 carousel">
                            <div class="slides">
                                <div class="slideItem"><a style="cursor: default"> <img
                                            src="{{ asset('client/image/catalog/Slide-1.png') }}"
                                            alt="Slide-1.png')}}"></a></div>
                                <div class="slideItem"><a style="cursor: default"> <img
                                            src="{{ asset('client/image/catalog/Slide-2.png') }}"
                                            alt="Slide-2.png')}}"></a></div>
                                <div class="slideItem"><a style="cursor: default"> <img
                                            src="{{ asset('client/image/catalog/Slide-3.png') }}"
                                            alt="Slide-3.png')}}"></a></div>
                                <div class="slideItem"><a style="cursor: default"> <img
                                            src="{{ asset('client/image/catalog/Slide-4.png') }}"
                                            alt="Slide-4.png')}}"></a></div>
                                <div class="slideItem"><a style="cursor: default"> <img
                                            src="{{ asset('client/image/catalog/Slide-5.png') }}"
                                            alt="Slide-5.png')}}"></a></div>
                                <div class="slideItem"><a style="cursor: default"> <img
                                            src="{{ asset('client/image/catalog/slide-6.png') }}"
                                            alt="slide-6.png')}}"></a></div>
                                <div class="slideItem"><a style="cursor: default"> <img
                                            src="{{ asset('client/image/catalog/slide-7.png') }}"
                                            alt="slide-7.png')}}"></a></div>
                            </div>
                        </div>
                        <div class="book-gallery carousel-style1 carousel temp">
                            <div class="slides">
                                <div class="slideItem"><a style="cursor: default"> <img
                                            src="{{ asset('client/image/catalog/Slide-1.png') }}"
                                            alt="Slide-1.png')}}"></a></div>
                                <div class="slideItem"><a style="cursor: default"> <img
                                            src="{{ asset('client/image/catalog/Slide-2.png') }}"
                                            alt="Slide-2.png')}}"></a></div>
                                <div class="slideItem"><a style="cursor: default"> <img
                                            src="{{ asset('client/image/catalog/Slide-3.png') }}"
                                            alt="Slide-3.png')}}"></a></div>
                                <div class="slideItem"><a style="cursor: default"> <img
                                            src="{{ asset('client/image/catalog/Slide-4.png') }}"
                                            alt="Slide-4.png')}}"></a></div>
                                <div class="slideItem"><a style="cursor: default"> <img
                                            src="{{ asset('client/image/catalog/Slide-5.png') }}"
                                            alt="Slide-5.png')}}"></a></div>
                                <div class="slideItem"><a style="cursor: default"> <img
                                            src="{{ asset('client/image/catalog/slide-6.png') }}"
                                            alt="slide-6.png')}}"></a></div>
                                <div class="slideItem"><a style="cursor: default"> <img
                                            src="{{ asset('client/image/catalog/slide-7.png') }}"
                                            alt="slide-7.png')}}"></a></div>
                            </div>
                        </div>
                        <div class="shade"></div>
                    </div>
                </div>
            </div> -->
        </div>
        <span class="special_default_width" style="display:none; visibility:hidden"></span>
        <div>
            <div class="testimonial">
                <div class="container">
                    <div class="row">
                        <div class="testimonial-container" id="testimonial">
                            <div class="testimonial_inner box">
                                <div class="homepage-testimonial-inner products block_content">
                                    <div class="products product-carousel box-content" id="testimonial-carousel">
                                        <div class="slider-item">
                                            <div class="product-block">
                                                <div class="product-block-inner">
                                                    <div class="image-block">
                                                        <img src="{{ asset('client/image/catalog/test1.png') }}"
                                                            alt="">
                                                    </div>
                                                    <div class="post-content-inner">
                                                        <div class="post-description">“ Đa số đã trải qua sự thay đổi trong một số 
                                                            hình thức, bằng cách chèn thêm sự hài hước 
                                                            hoặc những từ ngẫu nhiên mà không có vẻ thực sự tin được, 
                                                            thậm chí không thể tin được một chút nào."</div>
                                                        <div class="post-author"><a style="cursor: default">MACK
                                                                JECKNOWELGO</a></div>
                                                        <div class="post"><a style="cursor: default">Nhà thiết kế web</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slider-item">
                                            <div class="product-block">
                                                <div class="product-block-inner">
                                                    <div class="image-block">
                                                        <img src="{{ asset('client/image/catalog/test2.png') }}"
                                                            alt="">
                                                    </div>
                                                    <div class="post-content-inner">
                                                        <div class="post-description">“ Đa số đã trải qua sự thay đổi trong một số 
                                                            hình thức, bằng cách chèn thêm sự hài hước 
                                                            hoặc những từ ngẫu nhiên mà không có vẻ thực sự tin được, 
                                                            thậm chí không thể tin được một chút nào."</div>
                                                        <div class="post-author"><a style="cursor: default">MACK
                                                                JECKNOWELGO</a></div>
                                                        <div class="post"><a style="cursor: default">Nhà thiết kế web</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slider-item">
                                            <div class="product-block">
                                                <div class="product-block-inner">
                                                    <div class="image-block">
                                                        <img src="{{ asset('client/image/catalog/test3.png') }}"
                                                            alt="">
                                                    </div>
                                                    <div class="post-content-inner">
                                                        <div class="post-description">“ Đa số đã trải qua sự thay đổi trong một số 
                                                            hình thức, bằng cách chèn thêm sự hài hước 
                                                            hoặc những từ ngẫu nhiên mà không có vẻ thực sự tin được, 
                                                            thậm chí không thể tin được một chút nào."</div>
                                                        <div class="post-author"><a style="cursor: default">MACK
                                                                JECKNOWELGO</a></div>
                                                        <div class="post"><a style="cursor: default">Nhà thiết kế web</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="testimonial_default_width" style="display: none; visibility: hidden;">
                                    &nbsp;
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div id="carousel-0" class="banners-slider-carousel">



                    <div class="customNavigation">
                        <i class="fa prev fa-angle-left">&nbsp;</i>
                        <i class="fa next fa-angle-right">&nbsp;</i>
                    </div>


                    <div id="module-0-carousel" class="product-carousel brand-carousel ">





                        <div class="slider-item">



                            <div class="product-block-inner">
                                <a style="cursor: default"><img src="{{ asset('client/image/cache/catalog/03-181x82.png') }}"
                                        alt="Brand logo11" /></a>
                            </div>



                        </div>





                        <div class="slider-item">



                            <div class="product-block-inner">
                                <a style="cursor: default"><img src="{{ asset('client/image/cache/catalog/02-181x82.png') }}"
                                        alt="Brand logo10" /></a>
                            </div>



                        </div>





                        <div class="slider-item">



                            <div class="product-block-inner">
                                <a style="cursor: default"><img src="{{ asset('client/image/cache/catalog/01-181x82.png') }}"
                                        alt="Brand logo9" /></a>
                            </div>



                        </div>





                        <div class="slider-item">



                            <div class="product-block-inner">
                                <a style="cursor: default"><img src="{{ asset('client/image/cache/catalog/08-181x82.png') }}"
                                        alt="Brand logo8" /></a>
                            </div>



                        </div>





                        <div class="slider-item">



                            <div class="product-block-inner">
                                <a style="cursor: default"><img src="{{ asset('client/image/cache/catalog/07-181x82.png') }}"
                                        alt="Brand logo7" /></a>
                            </div>



                        </div>





                        <div class="slider-item">



                            <div class="product-block-inner">
                                <a style="cursor: default"><img src="{{ asset('client/image/cache/catalog/06-181x82.png') }}"
                                        alt="Brand logo6" /></a>
                            </div>



                        </div>





                        <div class="slider-item">



                            <div class="product-block-inner">
                                <a style="cursor: default"><img src="{{ asset('client/image/cache/catalog/05-181x82.png') }}"
                                        alt="Brand logo5" /></a>
                            </div>



                        </div>





                        <div class="slider-item">



                            <div class="product-block-inner">
                                <a style="cursor: default"><img src="{{ asset('client/image/cache/catalog/04-181x82.png') }}"
                                        alt="Brand logo4" /></a>
                            </div>



                        </div>





                        <div class="slider-item">



                            <div class="product-block-inner">
                                <a style="cursor: default"><img src="{{ asset('client/image/cache/catalog/03-181x82.png') }}"
                                        alt="Brand logo3" /></a>
                            </div>



                        </div>





                        <div class="slider-item">



                            <div class="product-block-inner">
                                <a style="cursor: default"><img src="{{ asset('client/image/cache/catalog/02-181x82.png') }}"
                                        alt="Brand logo2" /></a>
                            </div>



                        </div>





                        <div class="slider-item">



                            <div class="product-block-inner">
                                <a style="cursor: default"><img src="{{ asset('client/image/cache/catalog/01-181x82.png') }}"
                                        alt="Brand logo1" /></a>
                            </div>



                        </div>



                    </div>
                </div>
            </div>
        </div>
        <span class="module_default_width" style="display:none; visibility:hidden"></span>
    </div>
@endsection


@section('custom-js')
<script type="text/javascript">
$(document).ready(function() {
    $('.addtocart').on('click', function() {
        let url = $(this).data('url');
        $.ajax({
            method: 'GET',
            url: url,
            success: function(res) {
                reloadViewCart(res);
                Swal.fire ({
                    icon: 'success',
                    text: res.message,
                });
            },
            error: function(res) {
                Swal.fire ({
                    icon: 'error',
                    text: res.message,
                });
            },
        }); 
    });
    $('.wishlist').on('click', function() {
        let url = $(this).data('url');
        $.ajax({
            method: 'GET',
            url: url,
            success: function(res) {
                reloadViewLike(res);
                Swal.fire ({
                    icon: 'success',
                    text: res.message,
                });
            },
        }); 
    });

    function reloadViewCart(res) {
        let total = res.total;
        $('#cart-total').html(total);

        let selector = '#cart-products-container';
        let urlUpdate = window.location.href + " " + selector;
        $(selector).load(urlUpdate);
    }

    function reloadViewLike(res) {
        let total = res.total;
        $('#like-total').html(total);
    }
});
</script>
@endsection