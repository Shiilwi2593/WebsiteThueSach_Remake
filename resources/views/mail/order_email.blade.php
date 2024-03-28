<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>XÁC NHẬN ĐÃ ĐẶT ĐƠN HÀNG THÀNH CÔNG!</title>
    <script src="{{asset('client/js/jquery/jquery-2.1.1.min.js')}}"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- Bootstrap Css -->
    <link href="{{ asset('backend/assets/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <style>
        hr {
            border: 0.5px solid #000;
            margin: 10px 0;
        }
       table {
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid black;
        }
        .table-responsive td {
            text-align: center;
            vertical-align: middle;
        }
    </style>
</head>
<body>
    <h2>XÁC NHẬN ĐÃ ĐẶT ĐƠN HÀNG THÀNH CÔNG!</h2>
    <div>
        <h4>Xin chào bạn,</h4>
        <h4>chúng tôi xin xác nhận lại thông tin về đơn đặt hàng của bạn, rất cảm ơn bạn đã sử dụng dịch vụ của chúng tôi.</h4>
    </div>

    </div>
        <hr>
        <h2>THÔNG TIN KHÁCH HÀNG</h2>
            <div class="row">
                <div class="col-md-8">
                    <h4>Tên khách hàng: {{ $order->user->userInfo->first_name }} {{ $order->user->userInfo->last_name }}</h4>
                </div>
                <div class="col-md-4 text-right">
                    <h4>Số điện thoại: {{ $order->user->phone_number }}</h4>
                </div>
                <div class="col-md-12">
                    <h4>Email khách hàng: {{ $order->user->email }}</h4>
                </div>
            </div>

        <hr>
        <h2>CHI TIẾT ĐƠN HÀNG</h2>
        <h4 style="font-weight: bold;">Dịch vụ Thuê sách</h4>
        <h4 style="font-weight: bold;">ID đơn hàng: {{ $order->id }}</h4>
        <h4>Thời gian tạo đơn hàng</h4>
        <h4 style="font-weight: bold;">{{ $order->created_at->format('Y-m-d H:i:s') }}</h4>
        <table class="table-responsive" style="margin:10px">
            <tr>
                <th scope="col">STT</th>
                <th scope="col">TÊN SẢN PHẨM</th>
                <th scope="col">SỐ LƯỢNG</th>
                <th scope="col">THỜI GIAN THUÊ</th>
                <th scope="col">THỜI GIAN NHẬN</th>
                <th scope="col">THỜI GIAN TRẢ</th>
                <th scope="col">SỐ TIỀN</th>
                <th scope="col">TIỀN ĐẶT CỌC</th>
            </tr>
            @php 
            $total = 0;
            $total_deposit = 0;
            @endphp
            @foreach($order->productsInOrder as $item)
                <tr>
                    <td scope="row">{{ $loop->iteration }}</td>
                    <td>{{ $item->product_name }}</td>
                    <td>{{ $item->product_quantity }}</td>
                    <td>{{ $item->rent_time }} Ngày</td>
                    <td>{{ $item->expected_pick_up_date }}</td>
                    <td>{{ $item->expected_return_date }}</td>
                    <td>{{ number_format($item->product_price) }}đ</td>
                    <td>{{ number_format($item->deposit) }}đ</td>
                </tr>
                @php 
                $total += $item->product_price;
                $total_deposit += $item->deposit;
                @endphp
            @endforeach
        </table>
        <h4 style="font-weight: bold;">SỐ TIỀN THUÊ: {{number_format($total)}}đ</h4>
        <h4 style="font-weight: bold;">SỐ TIỀN CỌC: {{number_format($total_deposit)}}đ</h4>
        @php
        $total_to_pay = $total + $total_deposit;
        @endphp
        <h4 style="font-weight: bold;">TỔNG SỐ TIỀN: {{number_format($total_to_pay)}}đ</h4>
        <h4 style="font-weight: bold;">Lưu ý: Nếu bạn không nhận sản phẩm đó thì sau 3 ngày hoặc sau khi hết thời gian thuê sản phẩm đó sẽ tự động hủy</h4>
        <h4>Một lần nữa rất cảm ơn bạn đã sử dụng dịch vụ của chúng tôi chúc bạn có 1 ngày tốt lành.</h4>
    </div>

    <hr>
    <div>
        <div style="background:#9F8447; padding:10px; color:white;">
            <div>
                <h2>THÔNG TIN CỬA HÀNG</h2>
                    <ul style="list-style-type: none;">
                        <li class="address"><b>ĐỊA CHỈ:</b>
                            <a href="https://maps.app.goo.gl/QR87ArsfUPQcrgTG7" style="color:white; font-weight: bold;">
                            10 Quốc lộ 22, 
                            Tân Xuân, Hóc môn, Thành phố Hồ Chí Minh, Việt Nam</a>
                        </li>
                        <li class="ph-no"><b>ĐƯỜNG DÂY NÓNG: 0949847277</b></li>
                        <li class="email" style="color: white; background-color: #9F8447; font-weight: bold;">EMAIL: Dorakha14@gmail.com</li>
                    </ul>
            </div>
        </div>
    </div>
</body>

</html>