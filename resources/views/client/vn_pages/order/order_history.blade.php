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
            {{Breadcrumbs::render('orderHistory')}}
        </ul>
        <div class="row">
            @include('client.vn_pages.account_sidebar.account_sidebar')
            <div id="content" class="col-sm-9">
                <form action="">
                    <select name="active_order" id="active-order-input" class="form-control" style="width: 300px">
                        <option value="0" @if((int)request()->active_order === 0) selected @endif>Hiển thị tất các đơn hàng</option>
                        <option value="1" @if((int)request()->active_order === 1) selected @endif>Hiển thị đơn hàng chưa hoàn thành</option>
                    </select>
                </form>
                <div class="panel-collapse collapse in" id="collapse-checkout-option" aria-expanded="true" style="">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>LỊCH SỬ ĐƠN HÀNG</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    @if ($orders->count() > 0)
                    <div class="table-responsive">
                        <table class="table table-bordered shopping-cart">
                            <thead>
                                <tr>
                                    <td class="text-center">Số lượng sách</td>
                                    <td class="text-left">Tiền thuê</td>
                                    <td class="text-left">Tiền cọc</td>
                                    <td class="text-left">Thời gian</td>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($orders as $item)
                                <tr>
                                    <td class="text-left" style="text-align:center">{{$item->productsInOrder->count()}}</td>
                                    <td class="text-left">{{$item->total}}</td>
                                    @php 
                                        $total_deposit = 0;
                                        foreach($item->productsInOrder as $productInOrder) {
                                            $total_deposit += $productInOrder->deposit;
                                        } 
                                    @endphp

                                    <td class="text-left">{{$total_deposit}}</td>
                                    <td class="text-left">{{$item->created_at}}</td>
                                    <td class="text-center">
                                        <div style="display: flex; justify-content: center;">
                                            <a class="btn btn-primary" href="{{ route('client.vnOrderDetail', ['order' => $item->id]) }}">
                                                Chi tiết
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    @else
                    <div class="row" style="font-size: 3rem; width: 100%; text-align: center">
                        Không có đơn hàng nào đã đặt!
                    </div>
                    @endif
                </div>
                <div class="col-sm-14 text-right page-link">
                   {{ $orders->appends(request()->query())->links('client.pagination.custom') }}
                </div>
            </div>
        </div>
    </div>
@endsection

@section('custom-js')
<script type="text/javascript">
$(document).ready(function() {
    $('#active-order-input').on('change input', function() {
        $(this).closest('form').submit();
    });
});
</script>
@endsection