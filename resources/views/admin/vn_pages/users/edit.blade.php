@extends('admin.vn_pages.layout.master')

@section('body-class')
    class="account-register layout-2 left-col"
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

    <div class="container">
        <ul class="breadcrumb">
            {{ Breadcrumbs::render('account') }}
        </ul>
        @if(session('message'))
            <div class="alert alert-success"><i class="fa fa-exclamation-circle"></i> {{session('message')}}</div>
        @endif
        <div class="row">
            @include('client.pages.account_sidebar.account_sidebar')
            <div id="content" class="col-sm-9">
                <h1>Tài khoản</h1>
                <form action="{{route('client.users.update')}}" method="POST" class="form-horizontal">
                    @csrf
                    <fieldset id="account">
                        <legend>Thông tin cá nhân</legend>
                        <div class="form-group required" style="display: none;">
                            <label class="col-sm-2 control-label">Nhóm khách hàng</label>
                            <div class="col-sm-10">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="customer_group_id" value="1" checked="checked" />
                                        Mặc định</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" name="first_name" for="input-firstname">Tên</label>
                            <div class="col-sm-10">
                                <input type="text" name="first_name" value="{{old('first_name') ?? Auth::user()->userInfo->first_name}}" placeholder="First Name"
                                    id="input-firstname" class="form-control" />
                                @error('first_name')
                                <p class="text-danger">{{$message}}</p>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" name="last_name" for="input-lastname">Họ</label>
                            <div class="col-sm-10">
                                <input type="text" name="last_name" value="{{old('last_name') ?? Auth::user()->userInfo->last_name}}" placeholder="Last Name"
                                    id="input-lastname" class="form-control" />
                                @error('last_name')
                                <p class="text-danger">{{$message}}</p>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
                            <div class="col-sm-10">
                                <input type="email" name="email" value="{{old('email') ?? Auth::user()->email}}" placeholder="E-Mail"
                                    id="input-email" class="form-control" />
                                @error('email')
                                <p class="text-danger">{{$message}}</p>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-username">Tên tài khoản</label>
                            <div class="col-sm-10">
                                <input type="text" name="username" value="{{old('username') ?? Auth::user()->username}}" placeholder="Username"
                                    id="input-username" class="form-control" />
                                @error('username')
                                <p class="text-danger">{{$message}}</p>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-telephone">Số điện thoại</label>
                            <div class="col-sm-10">
                                <input type="tel" name="phone_number" value="{{old('phone_number') ?? Auth::user()->phone_number}}" placeholder="Telephone"
                                id="input-telephone" class="form-control" />
                                @error('phone_number')
                                <p class="text-danger">{{$message}}</p>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Giới tính</label>
                            <div class="col-sm-10">
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="1" 
                                    @if(!is_null(Auth::user()->userInfo->gender) && Auth::user()->userInfo->gender === 1) checked @endif />
                                    Nam</label>
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="0" 
                                    @if(!is_null(Auth::user()->userInfo->gender) && Auth::user()->userInfo->gender === 0) checked @endif />
                                    Nữ</label>
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="" />
                                    Khác</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Ngày sinh</label>
                            <div class="col-sm-10">
                                <input type="date" value="{{old('dob') ?? Auth::user()->userInfo->dob}}" name="dob" class="form-control">
                            </div>
                        </div>
                        <input type="hidden" name="level" value="1">
                    </fieldset>
                    <fieldset>
                        <legend>Đổi mật khẩu</legend>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-password">Mật khẩu</label>
                            <div class="col-sm-10">
                                <input type="password" name="password" value="" placeholder="Mật khẩu"
                                    id="input-password" class="form-control" />
                                @error('password')
                                <p class="text-danger">{{$message}}</p>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-confirm">Xác nhận mật khẩu</label>
                            <div class="col-sm-10">
                                <input type="password" name="password_confirmation" value="" placeholder="Nhập lại mật khẩu"
                                    id="input-confirm" class="form-control" />
                                @error('password_confirmation')
                                <p class="text-danger">{{$message}}</p>
                                @enderror
                            </div>
                        </div>
                    </fieldset>
                    <div class="buttons">
                        <div class="pull-right">
                            <input type="submit" value="Cập nhật" class="btn btn-primary" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection