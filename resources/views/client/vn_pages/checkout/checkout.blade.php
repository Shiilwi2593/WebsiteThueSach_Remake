@extends('client.vn_pages.layout.master')

@section('body-class')
    class="account-login layout-2 left-col"
@endsection


@section('content')

    @if (session('message'))
        <script type="text/javascript">
            Swal.fire({
                icon: 'error',
                text: '{{ session('message') }}',
            });
        </script>
    @endif
    @php
        $today = explode('-', $today);
    @endphp
    <div class="content_headercms_top"></div>
    <div class="content-top-breadcum">
        <div class="container">
            <div class="row">
                <div id="title-content">
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <ul class="breadcrumb">
            {{ Breadcrumbs::render('checkout') }}
        </ul>
        <div class="row">
            <div id="content" style="width: 100%; height:100%; padding:20px ;background-color:#FFF; border-radius:5px">
                <div class="panel-collapse collapse in" id="collapse-checkout-option" aria-expanded="true" style="">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>XÁC NHẬN THÔNG TIN ĐƠN HÀNG</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="table table-bordered shopping-cart" style="background-color: #FFFFFF">
                    <div style="padding:10px">
                        <div style="font-weight:bold">THÔNG TIN CỦA BẠN</div>
                        <!-- <div>Tài khoản: {{ Auth::user()->username }}</div> -->
                        <div>Họ và Tên: {{ Auth::user()->userInfo->first_name }} {{ Auth::user()->userInfo->last_name }}
                        </div>
                        <div>Số điện thoại: {{ Auth::user()->phone_number }}</div>
                        <div>Email: {{ Auth::user()->email }}</div>
                    </div>
                </div>
                @if ($cart->count() > 0)
                    <div class="table table-bordered shopping-cart" style="background-color: #FFFFFF">

                    </div>
                    <div style="font-weight:bold; margin:0 10px 10px;">THÔNG TIN ĐƠN HÀNG</div>
                    <div class="table-responsive">
                        <table class="table table-bordered shopping-cart">
                            <thead>
                                <tr>
                                    <td class="text-center">Ảnh</td>
                                    <td class="text-left">Tên sản phẩm</td>
                                    <td class="text-left">Số lượng</td>
                                    <td class="text-left">Số ngày thuê</td>
                                    <td class="text-center">Ngày nhận</td>
                                    <td class="text-right">Đơn giá</td>
                                    <td class="text-right">Tiền đặt cọc</td>
                                    <td class="text-right">Tổng</td>
                                </tr>
                            </thead>
                            <tbody>
                                <form action=""></form>
                                @php
                                    $total = 0;
                                    $total_deposit = 0;
                                @endphp
                                @foreach ($cart as $item)
                                    <tr>
                                        <td class="text-center"><img
                                                src="{{ asset("images/products/{$item->product->productImages->firstWhere('type', 1)->image_url}") }}"
                                                alt="ut labore et dolore magnam aliquam quae"
                                                title="ut labore et dolore magnam aliquam quae" class="img-thumbnail"
                                                style="height: 80px">
                                        </td>
                                        <td class="text-left">
                                            <p>{{ $item->product->name }}</p>
                                        </td>
                                        <td class="text-center">
                                            <p>{{ $item->quantity }}</p>
                                        </td>
                                        <td class="text-center">
                                            <p>{{ $item->rent_time }}</p>
                                        </td>
                                        <td class="text-center">
                                            <div style="max-width:150">
                                                <form method="POST" action={{ route('client.setPickUpDate') }}
                                                    id="set-pick-up-date-form{{ $item->id }}">
                                                    @csrf
                                                    <input type="hidden" name="product_id"
                                                        value="{{ $item->product->id }}">
                                                    <p>
                                                        <input type="date" name="date"
                                                        id="datePicker{{ $item->id }}" class="datePicker">
                                                    </p>
                                                    @error('pick_up_date')
                                                        {{ $message }}
                                                    @enderror
                                                </form>
                                            </div>
                                            <?php
                                            $dates = findNotAvailableDays($item->product, $item->quantity, $item->rent_time);
                                            ?>
                                            <script type="text/javascript">
                                                $(document).ready(function() {
                                                    var dates = [
                                                        @foreach ($dates as $date)
                                                            '{{ $date }}',
                                                        @endforeach
                                                    ];

                                                    function DisableDates(date) {
                                                        var string = jQuery.datepicker.formatDate('yy-mm-dd', date);
                                                        return [dates.indexOf(string) == -1];
                                                    }
                                                    $('#datePicker{{ $item->id }}').datepicker({
                                                        beforeShowDay: DisableDates,
                                                        dateFormat: 'yy-mm-dd',
                                                        minDate: new Date({{ $today[0] }}, {{ $today[1] - 1 }},
                                                            {{ $today[2] }}),
                                                        maxDate: "+1Y",
                                                    });
                                                    $('#set-pick-up-date-form{{ $item->id }}').on('change', function() {
                                                        let url = $(this).attr('action');
                                                        let formData = $(this).serialize();
                                                        console.log(formData);
                                                        $.ajax({
                                                            method: 'POST',
                                                            url: url,
                                                            data: formData,
                                                            success: function(res) {},
                                                        });
                                                    })
                                                });
                                            </script>
                                        </td>
                                        <td class="text-right">
                                            <div>
                                                {{ number_format($item->product->rentPrice->firstWhere('number_of_days', 1)->price) }}đ/1
                                                Ngày
                                            </div>
                                            <div>
                                                {{ number_format($item->product->rentPrice->firstWhere('number_of_days', 7)->price) }}đ/7
                                                Ngày
                                            </div>

                                            <div>
                                                {{ number_format($item->product->rentPrice->firstWhere('number_of_days', 30)->price) }}đ/30
                                                Ngày
                                            </div>
                                            <div>
                                                {{ number_format($item->product->rentPrice->firstWhere('number_of_days', 90)->price) }}đ/90
                                                Ngày
                                            </div>
                                        </td>
                                     
                                        <td class="text-right">
                                            <div>{{ number_format($item->product->price * $item->quantity) }}đ</div>
                                        </td>
                                        <td class="text-right">
                                            {{ number_format(calculatePrice($item->product, $item->rent_time, $item->quantity)) }}đ
                                        </td>
                                        
                                    </tr>
                                    @php
                                        $total += calculatePrice($item->product, $item->rent_time, $item->quantity);
                                        $total_deposit += $item->product->price * $item->quantity;
                                    @endphp
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <!-- <div>
                            Lưu ý: Nếu bạn lấy nhiều sách, bạn phải chờ một khoảng thời gian dài để nhận được
                        </div> -->
                    <div class="row">
                        <div class="col-sm-4 col-sm-offset-8">
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td class="text-right"><strong style="color: red; font-weight: bold;">Tổng tiền
                                                thuê:</strong></td>
                                        <td class="text-right" style="color: red; font-weight: bold;">
                                            {{ number_format($total) }}đ</td>
                                    </tr>
                                    <tr>
                                        <td class="text-right"><strong style="color: red; font-weight: bold;">Tổng tiền đặt
                                                cọc:</strong></td>
                                        <td class="text-right" style="color: red; font-weight: bold;">
                                            {{ number_format($total_deposit) }}đ</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="table table-bordered shopping-cart" style="background-color: #FFFFFF">

                    </div>
                    <div style="font-weight:bold; margin:0 10px 10px;">HÌNH THỨC NHẬN HÀNG</div>
                    <form method="GET" action="{{ route('client.placeOrder') }}" id="place-order-form">
                        <!-- Các trường khác của form -->
                        @csrf
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-sm-6">
                                <input type="radio" id="pick-up-checkbox" name="ship" value="Đến nhận">
                                <label for="pick-up-checkbox">Nhận hàng trực tiếp</label>
                                <input type="radio" id="delivery-checkbox" name="ship" value="Chưa xác thực">
                                <label for="delivery-checkbox">Giao hàng</label>
                            </div>
                    
                            <div class="col-sm-6" id="delivery-address" style="display: none;">
                                <input type="text" id="delivery-address-input" class="form-control" name="location" placeholder="Nhập địa chỉ giao hàng">
                            </div>

                        </div>
                    
                        <!-- Các trường khác của form -->
                    
                        <div class="buttons clearfix">
                            <div class="pull-right">
                                <button type="button" class="btn btn-primary" id="order-btn">Đặt hàng</button>
                            </div>
                        </div>
                    </form>
                @else
                    <div class="row" style="font-size: 3rem; width: 100%; text-align: center">
                        Chưa có gì trong giỏ hàng
                    </div>
                    <div class="row" style="text-align: center; margin-top: 10px">
                        <a href="{{ route('vnIndex') }}" class="btn btn-primary">Tiếp tục mua sắm</a>
                    </div>
                @endif
            </div>
        </div>
    </div>
@endsection

@section('custom-js')
    <script type="text/javascript">
        $(document).ready(function() {

           
            $('#order-btn').on('click', function() {
                let isEmpty = $('.datePicker').filter(function() {
                    return this.value == '';
                });

                if (isEmpty.length > 0) {
                    Swal.fire({
                        text: 'Bạn cần chọn ngày nhận hàng',
                        icon: 'error',
                    });
                } else {
                    // Nếu đã chọn ngày, tiếp tục xử lý đặt hàng
                    $('#place-order-form').submit();
                }
            });


            $('.set-pick-up-date-form').on('change', function() {
                let url = $(this).attr('action');
                let formData = $(this).serialize();
                $.ajax({
                    method: 'POST',
                    url: url,
                    data: formData,
                    success: function(res) {},
                });
            });

            function isToday(dateString) {
                let selectedDate = new Date(dateString);
                let today = new Date();
                return (
                    selectedDate.getDate() === today.getDate() &&
                    selectedDate.getMonth() === today.getMonth() &&
                    selectedDate.getFullYear() === today.getFullYear()
                );
            }
            $(document).ready(function() {
                $('input[name="ship"]').on('change', function() {
                    if ($('#delivery-checkbox').is(':checked')) {
                        $('#delivery-address').show();
                    } else {
                        $('#delivery-address').hide();
                    }
                });
            });
        });
    </script>
    
@endsection
