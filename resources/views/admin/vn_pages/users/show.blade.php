@extends('admin.vn_pages.layout.master')

@section('content')
    <div class="container-fluid">
        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0">Chi tiết người dùng</h4>

                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            {{Breadcrumbs::render('admin.users.detail', $user)}}
                        </ol>
                    </div>

                </div>
            </div>
        </div>
        @if (session('message'))
            <div class="alert alert-success alert-dismissible">
                {{ session('message') }}
            </div>
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
                            <form method="GET" id="active-order-form" action="" class="col-sm">
                                <div class="d-flex justify-content-sm-end">
                                    <select id="active-order-input" name="active_order" class="form-control mx-2" style="width: 200px">
                                        <option value="0" @if (!is_null(request()->active_order) && request()->active_order == 0) selected @endif>Hiển thị tất cả đơn hàng
                                        </option>
                                        <option value="1" @if (!is_null(request()->active_order) && request()->active_order == 1) selected @endif>Chỉ hiển thị đơn còn hoạt động
                                        </option>
                                    </select>
                                    <!-- <div class="search-box ms-2">
                                        <input type="text" class="form-control" id="search-input"
                                            placeholder="Tìm kiếm..." value="{{request()->keyword}}">
                                        <i class="ri-search-line search-icon"></i>
                                    </div> -->
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="card-body">
                        <div class="live-preview">
                            <div class="table-responsive table-card">
                                <table class="table align-middle table-nowrap table-striped-columns mb-0">
                                    <thead class="table-light">
                                        <tr>
                                            <th scope="col">ID Đơn hàng</th>
                                            <th>Tên khách hàng</th>     
                                            <th>Số điện thoại</th>                                  
                                            <th scope="col">Thời gian tạo</th>
                                            <th scope="col">Số tiền</th>
                                            <th scope="col" style="width: 150px;">Tùy chỉnh</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($orders as $order)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $user->userInfo->first_name }}
                                                    {{ $user->userInfo->last_name }}
                                                </td>      
                                                <td>{{ $user->phone_number }}</td>                                      
                                                <td>{{ $order->created_at }}</td>
                                                <td>{{ number_format($order->total) }}đ</td>
                                                <td>
                                                    <a href="{{ route('admin.orders.order_detail', ['order' => $order->id]) }}"
                                                        type="button" class="btn btn-sm btn-light">Chi tiết</a>
                                                    <form class="d-inline"
                                                        action="{{ route('admin.users.changeStatus', ['user' => $order->id]) }}"
                                                        method="POST">
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                    <tfoot class="table-light">
                                        <tr>
                                            <td colspan="13">
                                                {{ $orders->appends(request()->query())->links('admin.pagination.custom') }}
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div><!-- end card-body -->
                </div><!-- end card -->
            </div><!-- end col -->
        </div>


        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title mb-3">Thông tin</h5>
                        <div class="table-responsive">
                            <table class="table table-breviewless mb-0">
                                <tbody>
                                    <tr>
                                        <th class="ps-0" scope="row">Số điện thoại :</th>
                                        <td class="text-muted">{{ $user->phone_number }}</td>
                                    </tr>
                                    <tr>
                                        <th class="ps-0" scope="row">E-mail :</th>
                                        <td class="text-muted">{{ $user->email }}</td>
                                    </tr>
                                    <tr>
                                        <th class="ps-0" scope="row">Tên tài khoản :</th>
                                        <td class="text-muted">{{ $user->username }}</td>
                                    </tr>
                                    <tr>
                                        <th class="ps-0" scope="row">Ngày tạo :</th>
                                        <td class="text-muted">{{ $user->created_at }}</td>
                                    </tr>
                                    <tr>
                                        <th class="ps-0" scope="row">Lần cuối cập nhật :</th>
                                        <td class="text-muted">{{ $user->updated_at }}</td>
                                    </tr>
                                    <tr>
                                        <th class="ps-0" scope="row">Chức vụ :</th>
                                        <td class="text-muted">{{ $user->level == 1 ? 'admin' : 'client' }}</td>
                                    </tr>
                                    <tr>
                                        <th class="ps-0" scope="row">Trạng thái :</th>
                                        <td class="text-muted">{{ $user->status == 1 ? 'active' : 'blocked' }}</td>
                                    </tr>
                                    <tr>
                                        <th class="ps-0" scope="row">Họ tên :</th>
                                        <td class="text-muted">{{ $user->userInfo->first_name }}
                                            {{ $user->userInfo->last_name }}</td>
                                    </tr>
                                    <tr>
                                        <th class="ps-0" scope="row">Giới tính :</th>
                                        <td class="text-muted">
                                            {{ $user->userInfo->gender == 1 ? 'male' : ($user->userInfo->gender == '0' ? 'female' : 'unknown') }}
                                        </td>
                                    </tr>
                                    <th class="ps-0" scope="row">Ngày sinh :</th>
                                    <td class="text-muted">{{ $user->userInfo->dob }}
                                    </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div><!-- end card body -->
                </div>
            </div><!-- end col -->
            <div class="col-lg-12">
                <div class="hstack gap-2 justify-content-start">
                    <a href="{{ route('admin.users.edit', ['user' => $user->id]) }}" type="submit"
                        class="btn btn-primary">Sửa</a>
                    <form method="POST" action="{{ route('admin.users.destroy', ['user' => $user->id]) }}">
                        @csrf
                        @method('DELETE')
                        <button type="button" class="btn btn-danger" id="delete-btn"
                            >Xóa</button>
                    </form>
                </div>
            </div>

        </div>


    </div>
@endsection


@section('custom-js')
<script type="text/javascript">
    $(document).ready(function() {
        $('#active-order-input').on('change', function() {
            $('#active-order-form').submit();
        });
        $('#delete-btn').click(function() {
            event.preventDefault();
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
                    $(this).closest('form').submit();
                }
            })
        });

    });
</script>
@endsection