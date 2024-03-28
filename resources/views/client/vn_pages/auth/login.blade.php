@extends('client.vn_pages.layout.master')

@section('body-class')
    class="account-login layout-2 left-col"
@endsection


@section('content')
    <style>
        .well {
            margin-bottom: 20px;
            padding: 20px;
            background-color: #f9f9f9;
            border: 1px solid #e3e3e3;
            border-radius: 5px;
        }
        .gradient-custom {
            background: #6a11cb;
            background: -webkit-linear-gradient
                        (to right, 
                        rgba(106, 17, 203, 1), 
                        rgba(37, 117, 252, 1));
            background: linear-gradient
                        (to right, 
                        rgba(106, 17, 203, 1), 
                        rgba(37, 117, 252, 1)) }                      
    </style>

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
            {{ Breadcrumbs::render('login') }}
        </ul>

        @if($errors->any())
            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> Cảnh báo: Không khớp với Địa chỉ E-Mail và/hoặc Mật khẩu.</div>
        @endif
        <div class="row">
            @include('client.pages.account_sidebar.account_sidebar')
            <div id="content" class="col-sm-9">
                <h1>Login</h1>
                <div class="row">
                    <div class="col-sm-9">
                        <div class="well">
                            <h3>ĐĂNG NHẬP</h3>
                            <p><strong>ĐĂNG NHẬP VÀO TÀI KHOẢN CỦA TÔI</strong></p>
                            <form action="{{ route('postLogin') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label class="control-label" for="input-email">Nhập Email</label>
                                    <input type="text" name="email" value="{{ old('email') }}" placeholder="E-Mail Address" id="input-email" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-password">Nhập mật khẩu</label>
                                    <input type="password" name="password" value="" placeholder="Password" id="input-password" class="form-control" />
                                </div>
                                <input type="submit" value="ĐĂNG NHẬP" class="btn btn-primary" />
                            </form>
                        </div>
                    </div>
                    <div class="col-sm-9">
                        <div class="well">
                            <p><strong>ĐĂNG KÝ TÀI KHOẢN</strong></p>
                            <p>Bằng cách tạo tài khoản, bạn sẽ có thể mua sắm nhanh hơn, cập nhật trạng thái đơn hàng và theo dõi các đơn hàng bạn đã thực hiện trước đó.</p>
                            <a href="{{ route('signup') }}" class="btn btn-primary"> NHẤN VÀO ĐÂY ĐỂ ĐĂNG KÝ</a>
                            <!-- <a href="#!" class="small text-muted">Terms of use.</a>
                            <a href="#!" class="small text-muted">Privacy policy</a> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
@endsection
