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
                    <div class="card">
                        <div class="card-header bg-light">
                            Buttons
                        </div>

                        <div class="card-body">
                            <div class="mb-4">
                                <p>Normal Buttons</p>
                                <button class="btn btn-primary">Primary</button>
                                <button class="btn btn-secondary">Secondary</button>
                                <button class="btn btn-success">Success</button>
                                <button class="btn btn-warning">Warning</button>
                                <button class="btn btn-danger">Danger</button>
                                <button class="btn btn-info">Info</button>
                                <button class="btn btn-link">Link</button>
                            </div>

                            <hr>
                            <div class="my-4">
                                <p>Outline Buttons</p>
                                <p>Add <code>.btn-outline-*</code> to your buttons to mak</p>
                                <button type="button" class="btn btn-outline-primary">Primary</button>
                                <button type="button" class="btn btn-outline-secondary">Secondary</button>
                                <button type="button" class="btn btn-outline-success">Success</button>
                                <button type="button" class="btn btn-outline-warning">Warning</button>
                                <button type="button" class="btn btn-outline-danger">Danger</button>
                                <button type="button" class="btn btn-outline-info">Info</button>
                            </div>

                            <hr>
                            <div class="my-4">
                                <p>Button Sizes</p>
                                <p>To make different size buttons add one of the classes <code>.btn-sm</code>,
                                    <code>.btn-lg</code></p>
                                <button type="button" class="btn btn-secondary btn-sm">Small Size</button>
                                <button type="button" class="btn btn-secondary">Normal Size</button>
                                <button type="button" class="btn btn-secondary btn-lg">Large Size</button>
                            </div>

                            <hr>
                            <div class="my-4">
                                <p>Button with Icons</p>
                                <button type="button" class="btn btn-primary">
                                    <i class="fa fa-align-center"></i> &nbsp; Primary
                                </button>

                                <button type="button" class="btn btn-secondary">
                                    <i class="fa fa-download"></i> &nbsp; Secondary
                                </button>

                                <button type="button" class="btn btn-success">
                                    <i class="fa fa-cut"></i>&nbsp; Success
                                </button>

                                <button type="button" class="btn btn-warning">
                                    <i class="fa fa-clipboard"></i> &nbsp; Warning
                                </button>

                                <button type="button" class="btn btn-danger">
                                    <i class="fa fa-trash"></i> &nbsp; Danger
                                </button>
                            </div>

                            <hr>
                            <div class="my-4">
                                <p>Rounded Buttons</p>
                                <p>Add <code>.btn-rounded</code> class to your buttons to make them rounded.</p>
                                <button class="btn btn-rounded btn-primary">Primary</button>
                                <button class="btn btn-rounded btn-secondary">Secondary</button>
                                <button class="btn btn-rounded btn-success">Success</button>
                                <button class="btn btn-rounded btn-warning">Warning</button>
                                <button class="btn btn-rounded btn-danger">Danger</button>
                                <button class="btn btn-rounded btn-info">Info</button>
                            </div>

                            <hr>
                            <div class="my-4">
                                <p>Block Buttons</p>
                                <p>Add <code>.btn-block</code> class to your buttons to make them full width.</p>
                                <button type="button" class="btn btn-block btn-primary">Primary</button>
                                <button type="button" class="btn btn-block btn-secondary">Secondary</button>
                                <button type="button" class="btn btn-block btn-success">Success</button>
                                <button type="button" class="btn btn-block btn-warning">Warning</button>
                                <button type="button" class="btn btn-block btn-danger">Danger</button>
                                <button type="button" class="btn btn-block btn-info">Info</button>
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
