@extends('admin.vn_pages.layout.master')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <div class="h-100">
                    <div class="row">
                        <div class="col-xl-4">
                            <div class="card">
                                <div class="card-header border-0 align-items-center d-flex">
                                    <h4 class="card-title mb-0 flex-grow-1">
                                        <i class="fas fa-users"></i> Thống kê Người Dùng
                                    </h4>
                                </div>
                                <div class="card-body p-3">
                                    <p>Người dùng mới trong tháng: {{ $userStatistics['new_users'] }}</p>
                                    <p>Tổng số người dùng trong hệ thống: {{ $userStatistics['total_users'] }}</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4">
                            <div class="card">
                                <div class="card-header border-0 align-items-center d-flex">
                                    <h4 class="card-title mb-0 flex-grow-1">
                                        <i class="fas fa-chart-line"></i> Thống kê Doanh Thu
                                    </h4>
                                </div>
                                <div class="card-body p-3">
                                    <p>Tổng doanh thu hôm nay: {{ number_format($totalRevenueToday) }} VND</p>
                                    <p>Tổng doanh thu: {{ number_format($totalRevenue) }} VND</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4">
                            <div class="card">
                                <div class="card-header border-0 align-items-center d-flex">
                                    <h4 class="card-title mb-0 flex-grow-1">
                                        <i class="fas fa-shopping-cart"></i> Thống kê Đơn hàng
                                    </h4>
                                </div>
                                <div class="card-body p-3">
                                    <p>Tổng số lượng đơn hàng hôm nay: {{ $totalOrdersToday }}</p>
                                    <p>Tổng số lượng đơn hàng: {{ $totalOrders }}</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-header border-0 align-items-center d-flex">
                                    <h4 class="card-title mb-0 flex-grow-1">Thống kê các trạng thái</h4>
                                </div>
                                <div class="card-body p-0 pb-2">
                                    <div class="content-wrapper">
                                        <!-- Main content -->
                                        <section class="content">
                                            <div class="container-fluid">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div id="piechart"></div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div id="columnchart"></div>
                                                    </div>
                                                </div>
                                            </div><!-- /.container-fluid -->
                                        </section>
                                        <!-- /.content -->
                                    </div>
                                </div><!-- end card body -->
                            </div><!-- end card -->
                        </div><!-- end col -->
                    </div>
                </div>
            </div> <!-- end col -->
        </div>

    </div>
@endsection

@section('custom-js')
<script type="text/javascript">
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {

      var data = google.visualization.arrayToDataTable(@json($arrayDatas));

      var options = {
        title: ''
      };

      var chart = new google.visualization.PieChart(document.getElementById('piechart'));

      chart.draw(data, options);
    }
  </script>
  <script type="text/javascript">
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
        var data = google.visualization.arrayToDataTable(@json($arrayDatas));
        var options = {
            title: 'Biểu đồ cột',
            legend: { position: 'none'},
            bars: 'vertical', 
        };
        var chart = new google.visualization.ColumnChart(document.getElementById('columnchart'));

        chart.draw(data, options);
    }
</script>


@endsection