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
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header">
                            Default Card
                        </div>

                        <div class="card-body">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias architecto atque deleniti dolor dolores doloribus ducimus ea, eveniet facere hic illo illum laborum maiores nemo optio quas quis tenetur totam.
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header bg-light">
                            Light Header
                        </div>

                        <div class="card-body">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias architecto atque deleniti dolor dolores doloribus ducimus ea, eveniet facere hic illo illum laborum maiores nemo optio quas quis tenetur totam.
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias architecto atque deleniti dolor dolores doloribus ducimus ea, eveniet facere hic illo illum laborum maiores nemo optio quas quis tenetur totam.
                        </div>

                        <div class="card-footer bg-light">
                            Card Footer
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header bg-light">
                            Card with Actions

                            <div class="card-actions">
                                <a href="#" class="btn">
                                    <i class="fa fa-pencil-alt"></i>
                                </a>

                                <a href="#" class="btn">
                                    <i class="fa fa-cog"></i>
                                </a>
                            </div>
                        </div>

                        <div class="card-body">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam cupiditate dolore facere magnam, rerum sint velit voluptate voluptates? A assumenda consequuntur debitis eaque est in ipsam iure molestiae quam.
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header border border-top-0 border-right-0 border-left-0">
                            Card Divded Header
                        </div>

                        <div class="card-body">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam cupiditate dolore facere magnam, rerum sint velit voluptate voluptates? A assumenda consequuntur debitis eaque est in ipsam iure molestiae quam.
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header bg-light">
                            Light Card
                        </div>

                        <div class="card-body bg-light">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam cupiditate dolore facere magnam, rerum sint velit voluptate voluptates? A assumenda consequuntur debitis eaque est in ipsam iure molestiae quam.
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-md-4">
                    <div class="card text-white border-0">
                        <div class="card-header bg-primary">
                            Primary Card
                        </div>

                        <div class="card-body bg-primary">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam cupiditate dolore facere magnam, rerum sint velit voluptate voluptates? A assumenda consequuntur debitis eaque est in ipsam iure molestiae quam.
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card text-white border-0">
                        <div class="card-header bg-info">
                            Info Card
                        </div>

                        <div class="card-body bg-info">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam cupiditate dolore facere magnam, rerum sint velit voluptate voluptates? A assumenda consequuntur debitis eaque est in ipsam iure molestiae quam.
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card text-white border-0">
                        <div class="card-header bg-danger">
                            Danger Card
                        </div>

                        <div class="card-body bg-danger">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam cupiditate dolore facere magnam, rerum sint velit voluptate voluptates? A assumenda consequuntur debitis eaque est in ipsam iure molestiae quam.
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-md-4">
                    <div class="card text-white border-0">
                        <div class="card-header bg-success">
                            Success Card
                        </div>

                        <div class="card-body bg-success">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam cupiditate dolore facere magnam, rerum sint velit voluptate voluptates? A assumenda consequuntur debitis eaque est in ipsam iure molestiae quam.
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card text-white border-0">
                        <div class="card-header bg-warning">
                            Warning Card
                        </div>

                        <div class="card-body bg-warning">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam cupiditate dolore facere magnam, rerum sint velit voluptate voluptates? A assumenda consequuntur debitis eaque est in ipsam iure molestiae quam.
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card text-white border-0">
                        <div class="card-header bg-dark">
                            Dark Card
                        </div>

                        <div class="card-body bg-dark">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam cupiditate dolore facere magnam, rerum sint velit voluptate voluptates? A assumenda consequuntur debitis eaque est in ipsam iure molestiae quam.
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
