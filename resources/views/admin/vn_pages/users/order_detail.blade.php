    @extends('admin.vn_pages.layout.master')

    @section('content')
        <div class="container-fluid">
            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                        <h4 class="mb-sm-0">Chi tiết đơn hàng</h4>
                    </div>
                        <!-- <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                {{Breadcrumbs::render('admin.users.order', $order, $order->user)}}
                            </ol>
                        </div> -->

                    </div>
                </div>
            </div>
            @if (session('message'))
                {!! session('message') !!}
            @endif
            <!-- end page title -->
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title mb-3">Thông tin khách hàng</h5>
                        <div class="table-responsive">
                            <table class="table table-breviewless mb-0">
                                <tbody>
                                    <tr>
                                        <th class="ps-0" scope="row">Họ tên :</th>
                                        <td>{{ $order->user->userInfo->first_name }} {{ $order->user->userInfo->last_name }}</td>
                                    </tr>
                                    <tr>
                                        <th class="ps-0" scope="row">Mail :</th>
                                        <td>{{ $order->user->email }}</td>
                                    </tr>
                                    <tr>
                                        <th class="ps-0" scope="row">Số điện thoại :</th>
                                        <td>{{ $order->user->phone_number }}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div><!-- end card body -->
                </div>
            </div><!-- end col -->
            @foreach ($order->productsInOrder as $item)
            <div class="row" style="margin-bottom: 10px">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title mb-3">Thông tin</h5>
                            <div class="table-responsive">
                                <table class="table table-breviewless mb-0">
                                    <tbody>
                                        <tr>
                                            <th class="ps-0" scope="row">Thời gian tạo:</th>
                                            <td class="text-muted">{{ $item->created_at }}</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Tên sách:</th>
                                            <td class="text-muted">{{ $item->product_name }}</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Số lượng:</th>
                                            <td class="text-muted">{{ $item->product_quantity}} cuốn</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Vị trí:</th>
                                            <td class="text-muted">{{ $item->location}} </td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Thời gian thuê:</th>
                                            <td class="text-muted">{{ $item->rent_time }} ngày</td>
                                        </tr>
                                        <!-- <tr>
                                            <th class="ps-0" scope="row">Giá thuê 1 ngày</th>
                                            <td class="text-muted">{{ number_format($item->product->rentPrice->firstWhere('number_of_days', 1)->price) }}đ</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Giá thuê 7 ngày</th>
                                            <td class="text-muted">{{ number_format($item->product->rentPrice->firstWhere('number_of_days', 7)->price) }}đ</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Giá thuê 30 ngày</th>
                                            <td class="text-muted">{{ number_format($item->product->rentPrice->firstWhere('number_of_days', 30)->price) }}đ</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Giá thuê 90 ngày</th>
                                            <td class="text-muted">{{ number_format($item->product->rentPrice->firstWhere('number_of_days', 90)->price) }}đ</td>
                                        </tr> -->
                                        <tr>
                                            <th class="ps-0" scope="row">Giá sản phẩm</th>
                                            <td class="text-muted">{{ number_format($item->product->price) }}đ</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Số tiền thuê sách:</th>
                                            <td class="text-muted">{{ number_format($item->product_price) }}đ</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Số tiền đặt cọc:</th>
                                            <td class="text-muted">{{ number_format($item->deposit) }}đ</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Tổng số tiền hoàn trả:</th>
                                            <td class="text-muted">{{ number_format($item->deposit_return) }}đ</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Ngày nhận dự kiến:</th>
                                            <td class="text-muted">{{ $item->expected_pick_up_date }}</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Ngày hoàn sách dự kiến:</th>
                                            <td class="text-muted">{{ $item->expected_return_date }}</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Ngày nhận sách:</th>
                                            <td class="text-muted">{{ $item->pick_up_date }}</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Ngày hoàn sách:</th>
                                            <td class="text-muted">{{ $item->return_date }}</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Số lượng sách trả lại tốt:</th>
                                            <td class="text-muted">{{ $item->returned_good_quantity }}</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Số lượng sách trả lại tệ:</th>
                                            <td class="text-muted">{{ $item->returned_bad_quantity }}</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Trạng thái:</th>
                                            <td class="text-muted">{{ $item->status }}</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Thời gian cập nhật:</th>
                                            <td class="text-muted">{{ $item->updated_at }}</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0" scope="row">Trả trễ:</th>
                                            <td class="text-muted">{{ $item->lated === 1 ? 'đã trả trễ' : 'không' }}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="col-lg-12" style="margin: 5px; padding: 5px;">
                                <div class="hstack gap-2 justify-content-end">
                                    @if($today < $item->expected_pick_up_date && $item->status !== $order_statuses['cancel'])
                                        <a href="{{ route('admin.orders.changeStatus', ['productInOrder' => $item->id, 'status' => $order_statuses['cancel']]) }}" type="submit"
                                            class="btn btn-danger">Hủy đơn</a>   
                                    @elseif($item->status === $order_statuses['wait_for_pick_up'])
                                        <a href="{{ route('admin.orders.changeStatus', ['productInOrder' => $item->id, 'status' => $order_statuses['picked_up']]) }}" type="submit"
                                            class="btn btn-primary">Đã nhận sách</a>
                                        <a href="{{ route('admin.orders.changeStatus', ['productInOrder' => $item->id, 'status' => $order_statuses['cancel']]) }}" type="submit"
                                            class="btn btn-danger">Hủy đơn</a>
                                    @elseif($item->status === $order_statuses['picked_up']
                                    || $item->status === $order_statuses['some_returned_bad']
                                    || $item->status === $order_statuses['some_returned_good'])
                                        <a href="{{ route('admin.orders.changeStatus', ['productInOrder' => $item->id, 'status' => $order_statuses['returned_good']]) }}" type="submit"
                                            class="btn btn-success">1 sản phẩm được trả lại trong tình trạng tốt</a>
                                        <a href="{{ route('admin.orders.changeStatus', ['productInOrder' => $item->id, 'status' => $order_statuses['returned_bad']]) }}" type="submit"
                                            class="btn btn-danger">1 sản phẩm được trả lại trong tình trạng tệ</a>
                                        <a href="{{ route('admin.orders.changeStatus', ['productInOrder' => $item->id, 'status' => $order_statuses['returned_good'], 'returnedAll' => true]) }}" type="submit"
                                            class="btn btn-success">Tất cả các sản phẩm được trả lại trong tình trạng tốt</a>
                                        <a href="{{ route('admin.orders.changeStatus', ['productInOrder' => $item->id, 'status' => $order_statuses['returned_bad'], 'returnedAll' => true]) }}" type="submit"
                                            class="btn btn-danger">Tất cả các sản phẩm được trả lại trong tình trạng tệ</a>
                                    @endif
                                </div>
                </div>
                        </div><!-- end card body -->
                    </div>
                </div><!-- end col -->
            </div>
            @endforeach
            <div class="page-title-left" style="padding-bottom: 20px">
                        <a href="{{ route('admin.vnOrdersIndex') }}" class="btn btn-secondary">
                            <i class="fas fa-arrow-left"></i> Trở về danh sách đơn hàng
                        </a>
             </div>
        </div>
    @endsection
