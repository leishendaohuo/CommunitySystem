<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Carbon - Admin Template</title>
    <link rel="stylesheet" href="<%=basePath%>assets/vendor/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="<%=basePath%>assets/vendor/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="<%=basePath%>assets/css/styles.css">
</head>
<body class="sidebar-fixed header-fixed">
<div class="page-wrapper">
    <div class="page-header">
    	<jsp:include page="pageheader.jsp"></jsp:include>
	</div>

    <div class="main-container">
    	<div class="sidebar">
			<jsp:include page="menu.jsp"></jsp:include>
		</div>

        <div class="content">
            <div class="row">
                <div class="col-md-3">
                    <div class="card p-4">
                        <div class="card-body d-flex justify-content-between align-items-center">
                            <div>
                                <span class="h4 d-block font-weight-normal mb-2">54</span>
                                <span class="font-weight-light">Total Users</span>
                            </div>

                            <div class="h2 text-muted">
                                <i class="icon icon-people"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card p-4">
                        <div class="card-body d-flex justify-content-between align-items-center">
                            <div>
                                <span class="h4 d-block font-weight-normal mb-2">$32,400</span>
                                <span class="font-weight-light">Income</span>
                            </div>

                            <div class="h2 text-muted">
                                <i class="icon icon-wallet"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card p-4">
                        <div class="card-body d-flex justify-content-between align-items-center">
                            <div>
                                <span class="h4 d-block font-weight-normal mb-2">900</span>
                                <span class="font-weight-light">Downloads</span>
                            </div>

                            <div class="h2 text-muted">
                                <i class="icon icon-cloud-download"></i>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card p-4">
                        <div class="card-body d-flex justify-content-between align-items-center">
                            <div>
                                <span class="h4 d-block font-weight-normal mb-2">32s</span>
                                <span class="font-weight-light">Time</span>
                            </div>

                            <div class="h2 text-muted">
                                <i class="icon icon-clock"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body p-5">
                            <div class="text-center">
                                <span class="h4 d-block font-weight-normal mb-2">32s</span>
                                <span class="font-weight-light">Avg. Response Time</span>
                            </div>

                            <div class="mt-4">
                                <div class="progress">
                                    <div class="progress-bar bg-warning" role="progressbar" style="width: 35%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body p-5">
                            <div class="text-center">
                                <span class="h4 d-block font-weight-normal mb-2">565</span>
                                <span class="font-weight-light">Total Downloads</span>
                            </div>

                            <div class="mt-4">
                                <div class="progress">
                                    <div class="progress-bar bg-success" role="progressbar" style="width: 24%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body p-5">
                            <div class="text-center">
                                <span class="h4 d-block font-weight-normal mb-2">232</span>
                                <span class="font-weight-light">New Users</span>
                            </div>

                            <div class="mt-4">
                                <div class="progress">
                                    <div class="progress-bar bg-info" role="progressbar" style="width: 65%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body p-5">
                            <div class="text-center">
                                <span class="h4 d-block font-weight-normal mb-2">$44,000</span>
                                <span class="font-weight-light">Income</span>
                            </div>

                            <div class="mt-4">
                                <div class="progress">
                                    <div class="progress-bar bg-dark" role="progressbar" style="width: 70%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3">
                    <div class="card bg-danger border-0">
                        <div class="card-body d-flex justify-content-between text-white flex-column">
                            <div class="font-weight-bold">
                                <span>Traffic</span>
                                <span class="float-right">120,124</span>
                            </div>

                            <div class="small mb-3">
                                <span>Today</span>
                                <span class="float-right">+2,452 (55%)</span>
                            </div>

                            <canvas class="widget-line-chart" width="100%" height="30"></canvas>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card bg-primary border-0">
                        <div class="card-body d-flex justify-content-between text-white flex-column">
                            <div class="font-weight-bold">
                                <span>Traffic</span>
                                <span class="float-right">120,124</span>
                            </div>

                            <div class="small mb-3">
                                <span>Today</span>
                                <span class="float-right">+2,452 (55%)</span>
                            </div>

                            <canvas class="widget-line-chart" width="100%" height="30"></canvas>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card bg-success border-0">
                        <div class="card-body d-flex justify-content-between text-white flex-column">
                            <div class="font-weight-bold">
                                <span>Traffic</span>
                                <span class="float-right">120,124</span>
                            </div>

                            <div class="small mb-3">
                                <span>Today</span>
                                <span class="float-right">+2,452 (55%)</span>
                            </div>

                            <canvas class="widget-line-chart" width="100%" height="30"></canvas>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card bg-dark border-0">
                        <div class="card-body d-flex justify-content-between text-white flex-column">
                            <div class="font-weight-bold">
                                <span>Traffic</span>
                                <span class="float-right">120,124</span>
                            </div>

                            <div class="small mb-3">
                                <span>Today</span>
                                <span class="float-right">+2,452 (55%)</span>
                            </div>

                            <canvas class="widget-line-chart" width="100%" height="30"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<%=basePath%>assets/vendor/jquery/jquery.min.js"></script>
<script src="<%=basePath%>assets/vendor/popper.js/popper.min.js"></script>
<script src="<%=basePath%>assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=basePath%>assets/vendor/chart.js/chart.min.js"></script>
<script src="<%=basePath%>assets/js/carbon.js"></script>
<script src="<%=basePath%>assets/js/demo.js"></script>
</body>
</html>
