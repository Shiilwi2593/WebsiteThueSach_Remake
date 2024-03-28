<footer>
    <div id="footer">
        <div class="container">
            <div class="row">

                <div class="content_footer_left">
                    <div>
                        <div class="footer_logo col-sm-3 column">
                            <div class="footerlogo">
                                <a href="{{route('vnHome')}}">
                                    <img src="{{asset('client/image/catalog/footer_logo.png')}}" alt="">
                                </a>
                            </div>
                            <div class="about-description">
                                <p>Smart Book Store là hệ thống bán và cho thuê sách trực tuyến hàng đầu Việt Nam với những thủ tục hết sức đơn giản sẽ đem lại trải nghiệm tuyệt vời nhất cho khách hàng. </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3 column">
                    <h5>THÔNG TIN VÀ DỊCH VỤ</h5>
                    <ul class="list-unstyled">
                        <li><a href="{{route('vnAboutUs')}}">Về chúng tôi</a></li>
                        <li>
                            <a href="{{route('term-of-service')}}">Điều khoản & dịch vụ</a>
                        </li>
                    </ul>
                </div>

                <div class="col-sm-3 column">
                    <div class="content_footer_right">
                        <div>
                            <div id="contact">
                                <h5>Thông tin cửa hàng</h5>
                                    <ul>
                                        <li class="address">
                                            <a href="https://maps.app.goo.gl/QR87ArsfUPQcrgTG7">10 Quốc lộ 22, 
                                            Tân Xuân, Hóc môn, Thành phố Hồ Chí Minh, Việt Nam</a>
                                        </li>
                                        <li class="ph-no"><b>Đường dây nóng: 0902471435</b></li>
                                        <li class="email"><b>Email: Dorakha14@gmail.com</b></li>
                                    </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-3 column">
                    <h5>TÀI KHOẢN CỦA TÔI</h5>
                    <ul class="list-unstyled">
                        <li><a href="{{route('client.users.edit')}}">Thông tin tài khoản</a></li>
                        <li><a href="{{route('client.orderHistory')}}">Danh sách yêu thích</a></li>
                        <li><a href="{{route('client.vnLikedProducts')}}">Lịch sử đặt hàng</a></li>
                    </ul>
                </div>
<!-- 
                <div class="col-sm-4 column">
                    <h5>Thông tin về chúng tôi</h5>
                    <ul class="list-unstyled">
                        <li><a href="{{route('vnAboutUs')}}">Về chúng tôi</a></li>
                    </ul>
                </div> -->

                <div class="footer-bottom">

                    <div class="powerd"> Thiết kế bởi <a href="http://www.opencart.com/">Nhóm 32 32</a>
                        &copy; 2023 </div>

                </div>
            </div>
        </div>

    </div>
</footer>
