@extends('admin.vn_pages.layout.master')

@section('content')
    <div class="container-fluid">
        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">Danh sách đơn hàng</h4>

                    <div class="page-title-right">
                        <ol class="breadcrumb m-0"> 
                            {{Breadcrumbs::render('admin.orders')}}
                        </ol>
                    </div>

                </div>
            </div>
        </div>
        @if (session('message'))
            {!! session('message') !!}
        @endif
        <!-- end page title -->

        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-header">
                        <div class="row g-4 align-items-center">
                            <div class="col-sm-auto">
                                <div>
                                    <h4 class="card-title mb-0 flex-grow-1">Đơn hàng</h4>
                                </div>
                            </div>
                            <div class="col-sm">
                                <div class="d-flex justify-content-sm-end">
                                    <select id="sort-by" class="form-control mx-2" style="width: 120px">
                                        <option value="">---Sắp xếp---</option>
                                        <option value="0" @if(!is_null(request()->sort_by) && request()->sort_by == 0) selected @endif>Mới nhất</option>
                                        <option value="1" @if(!is_null(request()->sort_by) && request()->sort_by == 1) selected @endif>Trễ nhất</option>
                                    </select>
                                    <button id="btn-today" class="btn btn-light" type="button" style="margin-left:1%">Ngày hôm nay</button>
                                    <button id="btn-month" class="btn btn-light" style="margin-left:1%; margin-right:1%" type="button">Tháng này</button>
                                    <button class="btn btn-light" type="button" data-bs-toggle="offcanvas"
                                        data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
                                    <i class="fa-solid fa-filter"></i> Bộ lọc</button>
                                    <div class="search-box ms-2">
                                        <input type="text" class="form-control" id="search-input"
                                        placeholder="Tìm kiếm đơn hàng..." value="{{request()->keyword}}">
                                        <i class="ri-search-line search-icon"></i>
                                    </div> 
                                    <!-- Xuất excel -->
                                    <button id="btn-excel" class="btn btn-dark" style="margin-left:1%; margin-right:1%;" type="button" onclick="window.location.href='{{ route('admin.export')}}'">
                                    <i class="fas fa-file-excel"></i>  Xuất dữ liệu
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                    <div class="live-preview">
                        <div class="table-responsive table-card">
                            <table class="table align-middle table-nowrap table-striped-columns mb-0">
                                <thead class="table-light">
                                    <tr style="text-align: center; vertical-align: middle;">
                                        <th scope="col">ID Đơn hàng</th>
                                        <th scope="col">Ngày tạo</th>
                                        <th scope="col">ID Người dùng</th>
                                        <th scope="col">Tên Khách hàng</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Số điện thoại</th>
                                        <th scope="col">Số lượng sách</th>
                                        <th scope="col">Trạng thái</th>
                                        <th scope="col">Vị trí</th>
                                        <th scope="col">Số tiền</th>
                                        <th scope="col" style="width: 150px;">Thông tin</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($orders as $order)
                                        <tr>
                                            <td style="text-align: center; vertical-align: middle;">{{ $order->id }}</td>
                                            <td>{{ $order->created_at }}</td>
                                            <td style="text-align: center; vertical-align: middle;">{{ $order->user_id }}</td>
                                            <td>{{ $order->user->userInfo->first_name }} {{ $order->user->userInfo->last_name }}</td>
                                            <td>{{ $order->user->email }}</td>
                                            <td>{{ $order->user->phone_number }}</td>
                                            <td style="text-align: center; vertical-align: middle;">{{ $order->productsInOrder->sum('product_quantity') }}</td>
                                            <td>
                                                @php $overallStatus = null; $color = null; @endphp
                                                @foreach ($order->productsInOrder as $productInOrder)
                                                    @if ($productInOrder->status === 'picked_up')
                                                        @php $overallStatus = 'Đã lấy hàng'; $color = 'blue'; @endphp
                                                    @elseif ($productInOrder->status === 'wait_for_pick_up')
                                                        @php $overallStatus = 'Đang chuẩn bị hàng'; @endphp
                                                    @elseif ($productInOrder->status === 'returned_bad')
                                                        @php $overallStatus = 'Trả hàng tình trạng tệ'; $color = 'red'; @endphp
                                                    @elseif ($productInOrder->status === 'some_returned_bad')
                                                        @php $overallStatus = 'Trả hàng tình trạng tệ'; $color = 'red'; @endphp
                                                    @elseif ($productInOrder->status === 'returned_good')
                                                        @php $overallStatus = 'Trả hàng tốt'; $color = 'green'; @endphp
                                                    @elseif ($productInOrder->status === 'some_returned_good')
                                                        @php $overallStatus = 'Một số sản phẩm trả tốt'; $color = 'green'; @endphp
                                                    @elseif ($productInOrder->status === 'cancel')
                                                        @php $overallStatus = 'Hủy đơn'; $color = 'red'; @endphp
                                                    @endif
                                                @endforeach
                                                @if ($color)
                                                    <span style="color:{{ $color }}">{{ $overallStatus }}</span>
                                                @else
                                                    {{ $overallStatus }}
                                                @endif
                                            </td>
                                            <td>
                                                @if ($order->productsInOrder->isNotEmpty())
                                                    {{ $order->productsInOrder->first()->location }}
                                                @else
                                                    <span class="text-danger">đến nhận</span>
                                                @endif
                                            </td>
                                            <td style="font-weight: bold;">{{ $order->total }}</td>
                                            <td>
                                                <a href="{{ route('admin.orders.order_detail', ['order' => $order->id]) }}"
                                                    type="button" class="btn btn-sm btn-light">Xem chi tiết</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                <tfoot class="table-light">
                                    <tr>
                                        <td colspan="12">
                                            {{ $orders->appends(request()->query())->links('admin.pagination.custom') }}
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>     <!-- end card-body -->
                </div><!-- end card -->
            </div><!-- end col -->
        </div>
    </div>
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header border-bottom">
            <h5 class="offcanvas-title" id="offcanvasRightLabel">Bộ lọc người dùng</h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body p-0 overflow-hidden">
            <div data-simplebar="init" style="height: calc(100vh - 112px);">
                <div class="simplebar-wrapper" style="margin: 0px;">
                    <div class="simplebar-height-auto-observer-wrapper">
                        <div class="simplebar-height-auto-observer"></div>
                    </div>
                    <div class="simplebar-mask">
                        <div class="simplebar-offset" style="right: 0px; bottom: 0px;">
                            <div class="simplebar-content-wrapper" tabindex="0" role="region"
                                aria-label="scrollable content" style="height: 100%; overflow: hidden scroll;">
                                <div class="simplebar-content" style="padding: 0px;">
                                    <form id="search-form" method="GET" action="" class="container">
                                        <div class="row p-3">
                                            <div class="col-xxl-12">
                                                <div>
                                                <label for="status-input" class="form-label">Trạng thái</label>
                                                    <select class="form-control" name="status" id="status-input">
                                                        <option value="">--Chọn trạng thái--</option>
                                                        @foreach($order_statuses as $key => $value)
                                                            <option value="{{ $value }}" @if(!is_null(request()->status) && request()->status == $value) selected @endif>{{ ucfirst(str_replace('_', ' ', $key)) }}</option>
                                                        @endforeach
                                                    </select>

                                                </div>
                                            </div>
                                        </div>
                                        <input type="hidden" id="sort-by-input" name="sort_by" value="{{request()->sort_by}}">
                                        <input type="hidden" name="keyword" id="keyword-input" value="{{request()->keyword}}">
                                        <div class="row p-3">
                                        <div class="col-xxl-12 d-flex justify-content-end">
                                            <button type="button" class="btn btn-light" id="filter-btn">Lọc</button>
                                        </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="simplebar-placeholder" style="width: auto; height: 987px;"></div>
                </div>
                <div class="simplebar-track simplebar-horizontal" style="visibility: hidden;">
                    <div class="simplebar-scrollbar" style="width: 0px; display: none;"></div>
                </div>
                <div class="simplebar-track simplebar-vertical" style="visibility: visible;">
                    <div class="simplebar-scrollbar"
                        style="height: 763px; transform: translate3d(0px, 0px, 0px); display: block;">
                    </div>
                </div>
            </div>
        </div>
        <div class="offcanvas-foorter border p-3 text-center">
            2023 ©.
        </div>
    </div>
@endsection


@section('custom-js')
    <script type="text/javascript">
    $(document).ready(function() {
        $('#search-input').keypress(function (e) {
            if (e.which == 13) {
            $('#keyword-input').val($(this).val());
            $('#search-form').submit();
            }
        });
        $('#sort-by').on('change', function () {
            $('#sort-by-input').val($(this).val());
            $('#search-form').submit();
        });
        $('#btn-today').on('click', function () {
            $('#sort-by').val(2);
            $('#sort-by-input').val(2);
            $('#search-form').submit();
        });
        $('#btn-month').on('click', function () {
            $('#sort-by').val(3); 
            $('#sort-by-input').val(3);
            $('#search-form').submit();
        });    
        $('#filter-btn').on('click', function () {
            $('#search-form').submit();
            }); 
        });
    </script>
@endsection


