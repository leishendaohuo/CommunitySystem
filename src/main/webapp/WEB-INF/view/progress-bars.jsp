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
                <div class="col-md-12">
                    <div class="card-deck">
                        <div class="card">
                            <div class="card-header bg-light">
                                Normal Progress Bars
                            </div>

                            <div class="card-body">
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar bg-success" role="progressbar" style="width: 35%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar bg-danger" role="progressbar" style="width: 55%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar bg-warning" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar bg-info" role="progressbar" style="width: 65%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar bg-secondary" role="progressbar" style="width: 30%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header bg-light">
                                Stripped Progress Bars
                            </div>

                            <div class="card-body">
                                <div class="progress mt-3">
                                    <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar bg-success progress-bar-striped" role="progressbar" style="width: 35%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar bg-danger progress-bar-striped" role="progressbar" style="width: 55%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar bg-warning progress-bar-striped" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar bg-info progress-bar-striped" role="progressbar" style="width: 65%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar bg-secondary progress-bar-striped" role="progressbar" style="width: 30%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-md-12">
                    <div class="card-deck">
                        <div class="card">
                            <div class="card-header bg-light">
                                Progress Bar Sizes
                            </div>

                            <div class="card-body">
                                <div class="progress" style="height: 1px">
                                    <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3" style="height: 10px">
                                    <div class="progress-bar bg-success" role="progressbar" style="width: 35%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3" style="height: 20px">
                                    <div class="progress-bar bg-danger" role="progressbar" style="width: 55%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3" style="height: 30px">
                                    <div class="progress-bar bg-warning" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3" style="height: 40px">
                                    <div class="progress-bar bg-info" role="progressbar" style="width: 65%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3" style="height: 50px">
                                    <div class="progress-bar bg-secondary" role="progressbar" style="width: 30%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header bg-light">
                                Labels with Progress Bars
                            </div>

                            <div class="card-body">
                                <div class="progress">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar bg-success" role="progressbar" style="width: 35%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">35%</div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar bg-danger" role="progressbar" style="width: 55%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">55%</div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar bg-warning" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar bg-info" role="progressbar" style="width: 65%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">65%</div>
                                </div>

                                <div class="progress mt-3">
                                    <div class="progress-bar bg-secondary" role="progressbar" style="width: 30%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">30%</div>
                                </div>
                            </div>
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
