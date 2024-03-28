@extends('client.vn_pages.layout.master')

@section('body-class')
    class="account-login layout-2 left-col"
@endsection


@section('content')
    <div class="content_headercms_top"></div>
    <div class="content-top-breadcum">
        <div class="container">
            <div class="row">
                <div id="title-content">
                </div>
            </div>
        </div>
    </div>

    <!-- ======= Quick view JS ========= -->
    <script>
        function quickbox() {
            if ($(window).width() > 767) {
                $('.quickview-button').magnificPopup({
                    type: 'iframe',
                    delegate: 'a',
                    preloader: true,
                    tLoading: 'Loading image #%curr%...',
                });
            }
        }
        jQuery(document).ready(function() {
            quickbox();
        });
        jQuery(window).resize(function() {
            quickbox();
        });
    </script>
    <div class="container">
        <ul class="breadcrumb">
            {{Breadcrumbs::render('orderDetail', $order)}}
        </ul>
        <div class="row">
            @include('client.vn_pages.account_sidebar.account_sidebar')
            <div id="content" class="col-sm-9">
                <div class="panel-collapse collapse in" id="collapse-checkout-option" aria-expanded="true" style="">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Chi tiết đơn hàng</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="table-container">
                    <div class="table-responsive">
                        <table class="table table-bordered shopping-cart">
                            <thead>
                                <tr>
                                    <td class="text-left">Hình ảnh</td>
                                    <td class="text-left">Tên sách</td>
                                    <td class="text-left">Thời gian thuê</td>
                                    <td class="text-left">Số lượng</td>
                                    <td class="text-left">Ngày nhận sách</td>
                                    <td class="text-left">Ngày trả sách</td></td>
                                    <td class="text-left">Đơn giá</td>
                                    <td class="text-left">vị trí</td>
                                    <td class="text-left">Số tiền cọc</td>
                                    <td class="text-left">Trạng thái</td>
                                    <td class="text-left">Hủy đơn hàng</td>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($items as $item)
                                    <tr>
                                        <td class="text-left">
                                            <img 
                                            style="height: 80px"
                                            src="{{ asset("images/products/{$item->product->productImages->firstWhere('type', 1)->image_url}") }}" 
                                            alt="No Image">
                                        </td>
                                        <td class="text-left">{{ $item->product_name }}</td>
                                        <td class="text-left">{{ $item->rent_time }} ngày</td>
                                        <td class="text-left">{{ $item->product_quantity }}</td>
                                        <td class="text-left">{{ $item->pick_up_date ?? $item->expected_pick_up_date }}</td>
                                        <td class="text-left">{{ $item->return_date ?? $item->expected_return_date }}</td>
                                        <td class="text-left">{{ number_format($item->product_price) }}đ</td>
                                        <td class="text-left">{{ $item->location }}</td>
                                        <td class="text-left">{{ number_format($item->deposit) }}đ</td>
                                        <td class="text-left">
                                            @switch($item->status)
                                                @case($productInOrderStatuses['wait_for_pick_up'])
                                                    Đang chờ nhận hàng
                                                @break
                                                @case($productInOrderStatuses['picked_up'])
                                                    Đã nhận hàng
                                                @break
                                                @case($productInOrderStatuses['returned_good'])
                                                    Sách được trả đủ
                                                @break
                                                @case($productInOrderStatuses['returned_bad'])
                                                    Sách được trả đủ
                                                @break
                                                @case($productInOrderStatuses['some_returned_good'])
                                                    Sách chưa trả đủ
                                                @break
                                                @case($productInOrderStatuses['some_returned_bad'])
                                                    Sách chưa trả đủ
                                                @break
                                                @case($productInOrderStatuses['cancel'])
                                                    Đã hủy
                                                @break
                                            @endswitch
                                        </td>
                                        <td class="text-right">
                                            <div style="display: flex">
                                                @if(in_array($item->status, $activeStatuses))
                                                <a class="btn btn-primary"
                                                    href="{{route('client.extendRentTime', ['productInOrderId' => $item->id])}}">
                                                    Extend Rent Time
                                                </a>
                                                @endif
                                                @if($item->status === $productInOrderStatuses['wait_for_pick_up'])
                                                <button class="cancel-button btn btn-danger"
                                                    data-url="{{ route('client.cancelOrderItem', ['productInOrderId' => $item->id]) }}">
                                                    Hủy
                                                </button>
                                                @endif
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- Tinh Trang Don Hang -->
                <div id="main-status-order">
                    <p style="color:#bf5636;font-size:18px;font-weight:bold">Tình trạng đơn hàng:</p>
                    <div id="img-status-container">
                        <!-- Waiting -->
                        <div class="img-text">
                            <img id="waiting" class="img-status" src="https://i.ibb.co/cF3xtBd/package.png"          alt="Đang chuẩn bị hàng">
                            <p   id ="text1"  class="text-status">Đơn hàng đang được chuẩn bị...</p>
                        </div>
                        <!-- Arrow1 -->
                        <img id="arrow1"  class="arrow"      src="https://i.ibb.co/DwBG4SX/right-arrow.png"          alt="right-arrow">
                        
                        <!-- Pick Up -->
                        <div class="img-text" style="margin-top:5%">
                            <img id="pick-up" class="img-status" src="https://i.ibb.co/fHTjSGV/cash-on-delivery.png" alt="Đã nhận hàng"   style="margin-top:6%; margin-left:3%" >
                            <p   id ="text2"  class="text-status" style="margin-left:5%">Đã nhận sách</p>
                        </div>
                        <!-- Arrow2 -->
                        <img id="arrow2"  class="arrow"      src="https://i.ibb.co/DwBG4SX/right-arrow.png"          alt="right-arrow">
                        
                        <!-- Returned -->
                        <div class="img-text" style="margin-top:5.5%">
                            <img id="return"  class="img-status" src="https://i.ibb.co/2y2KcKW/return.png"           alt="Đã trả hàng"    style="margin-top:6%; margin-left:3%">
                            <p   id ="text3"  class="text-status" style="margin-left:7%">Đã trả sách</p>
                            <p class="condition">
                                Tình trạng:
                                <span class="condition-status-{{ $item->id }}"></span>
                            </p>                        
                        </div>
                    </div>
                    
                </div>


                <div class="buttons clearfix">
                    <div class="pull-left"><a href="{{ route('client.orderHistory') }}" class="btn btn-primary">Quay lại lịch sử đơn hàng</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('custom-js')
    <script type="text/javascript">
            $(document).ready(function() {
                $('.cancel-button').on('click', function() {
                    let url = $(this).data('url');
                    $.ajax({
                        url: url,
                        method: 'GET',
                        success: function(res) {
                            let selector = '#table-container';
                            let urlUpdate = window.location.href + " " + selector;
                            $(selector).load(urlUpdate);
                            Swal.fire({
                                text: res.message,
                                icon: 'success',
                            })
                        }
                    });
                });
            });
    </script>
    <style>
        #main-status-order {
            width:auto;
            height:280px;
        }

        #img-status-container {
            display:flex;
            flex-direction:row;
        }

        .img-text {
            margin-left:4%;
            margin-top:4%;
        }

        .arrow {
            margin-top:7%;
            margin-left:3%;
            width:100px;
            height:80px;
        }

        .img-status {
            margin-left:5%;
            margin-top:5%;
            width:100px;
            height:100px;
        }

        .text-status {
            font-size:14px;
            font-weight:bold;
            margin-top:7%;
            margin-left:0%;
            width:150px;
            height:auto;
            color:#5c5c5c;
        }

        .condition {
            color:#787575;
            font-weight:bold;
            margin-top:-10px;
            font-size:8.5px;
            padding-left:7%;
            
        }

        .condition-status {
            font-size:12px;
            padding-left:2px;
            font-weight:bold;
            color:#428f1e;
            content: "Tốt"
        }

        @if($item && $item->status === $productInOrderStatuses['wait_for_pick_up'])
            #arrow2,
            #text2,
            #text3,
            #pick-up,
            #return {
                opacity: 0.2; 
            }
            .condition,
            .condition-status {
                opacity:0;
            }
        @elseif($item && $item->status === $productInOrderStatuses['picked_up'])
            #arrow1,
            #text1,
            #text3,
            #return,
            #waiting
             {
                opacity: 0.2;
            }
            
            .condition,
            .condition-status {
                opacity:0;
            }
        @elseif($item && ($item->status === $productInOrderStatuses['returned_bad'] || $item->status === $productInOrderStatuses['some_returned_bad']))
            #text1,
            #text2,
            #arrow1,
            #arrow2,
            #waiting,
            #pick-up{
                opacity: 0.2;
            }
            .condition-status-{{ $item->id }} {
                color: #961a14;
            }
            .condition-status-{{ $item->id }}::before {
                content: "Xấu";
                font-size:12px;

            }
        @elseif($item && ($item->status === $productInOrderStatuses['returned_good'] || $item->status === $productInOrderStatuses['some_returned_good']))
            #arrow1,
            #arrow2,
            #text1,
            #text2,
            #waiting,
            #pick-up{
                opacity: 0.2;
            }
            .condition-status-{{ $item->id }} {
                color: #267306;
            }
            .condition-status-{{ $item->id }}::before {
                content: "Tốt";
                font-size:12px;

            }
        @endif
        `
    </style>


    
@endsection
