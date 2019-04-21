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
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-light">
                            Normal Table
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Sales</th>
                                        <th>Price</th>
                                        <th>Discount</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td class="text-nowrap">Samsung Galaxy S8</td>
                                        <td>31,589</td>
                                        <td>$800</td>
                                        <td>5%</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td class="text-nowrap">Google Pixel XL</td>
                                        <td>99,542</td>
                                        <td>$750</td>
                                        <td>3%</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td class="text-nowrap">iPhone X</td>
                                        <td>62,220</td>
                                        <td>$1,200</td>
                                        <td>0%</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td class="text-nowrap">OnePlus 5T</td>
                                        <td>50,000</td>
                                        <td>$650</td>
                                        <td>5%</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td class="text-nowrap">Google Nexus 6</td>
                                        <td>400</td>
                                        <td>$400</td>
                                        <td>7%</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-light">
                            Striped Rows
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Sales</th>
                                        <th>Price</th>
                                        <th>Discount</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td class="text-nowrap">Samsung Galaxy S8</td>
                                        <td>31,589</td>
                                        <td>$800</td>
                                        <td>5%</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td class="text-nowrap">Google Pixel XL</td>
                                        <td>99,542</td>
                                        <td>$750</td>
                                        <td>3%</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td class="text-nowrap">iPhone X</td>
                                        <td>62,220</td>
                                        <td>$1,200</td>
                                        <td>0%</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td class="text-nowrap">OnePlus 5T</td>
                                        <td>50,000</td>
                                        <td>$650</td>
                                        <td>5%</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td class="text-nowrap">Google Nexus 6</td>
                                        <td>400</td>
                                        <td>$400</td>
                                        <td>7%</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-light">
                            Bordered Table
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Sales</th>
                                        <th>Price</th>
                                        <th>Discount</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td class="text-nowrap">Samsung Galaxy S8</td>
                                        <td>31,589</td>
                                        <td>$800</td>
                                        <td>5%</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td class="text-nowrap">Google Pixel XL</td>
                                        <td>99,542</td>
                                        <td>$750</td>
                                        <td>3%</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td class="text-nowrap">iPhone X</td>
                                        <td>62,220</td>
                                        <td>$1,200</td>
                                        <td>0%</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td class="text-nowrap">OnePlus 5T</td>
                                        <td>50,000</td>
                                        <td>$650</td>
                                        <td>5%</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td class="text-nowrap">Google Nexus 6</td>
                                        <td>400</td>
                                        <td>$400</td>
                                        <td>7%</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-light">
                            Hoverable Table
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Sales</th>
                                        <th>Price</th>
                                        <th>Discount</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td class="text-nowrap">Samsung Galaxy S8</td>
                                        <td>31,589</td>
                                        <td>$800</td>
                                        <td>5%</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td class="text-nowrap">Google Pixel XL</td>
                                        <td>99,542</td>
                                        <td>$750</td>
                                        <td>3%</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td class="text-nowrap">iPhone X</td>
                                        <td>62,220</td>
                                        <td>$1,200</td>
                                        <td>0%</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td class="text-nowrap">OnePlus 5T</td>
                                        <td>50,000</td>
                                        <td>$650</td>
                                        <td>5%</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td class="text-nowrap">Google Nexus 6</td>
                                        <td>400</td>
                                        <td>$400</td>
                                        <td>7%</td>
                                    </tr>
                                    </tbody>
                                </table>
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
