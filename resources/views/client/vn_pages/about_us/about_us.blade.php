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

    <div class="container">
        <ul class="breadcrumb">
            {{Breadcrumbs::render('aboutUs')}}
        </ul>
        <div class="row">
            @include('client.vn_pages.account_sidebar.account_sidebar')
            <div id="content" class="col-sm-9">
                <div class="panel-collapse collapse in" id="collapse-checkout-option" aria-expanded="true" style="">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Về chúng tôi</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <p>Tên          : HYPER TECH GROUP - SOFTWARE TECHNOLOGY</p>
                <p>Số điện thoại: 0949847277</p>
                <p>Email        : Dorakha14@gmail.com</p>
            </div>
        </div>
    </div>
@endsection
