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
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body p-0">
                                <div class="row p-5">
                                    <div class="col-md-6">
                                        <img src="./imgs/logo.png">
                                    </div>

                                    <div class="col-md-6 text-right">
                                        <p class="font-weight-bold mb-1">Invoice #550</p>
                                        <p class="text-muted">Due to: 4 Dec, 2019</p>
                                    </div>
                                </div>

                                <hr class="my-5">

                                <div class="row pb-5 p-5">
                                    <div class="col-md-6">
                                        <p class="font-weight-bold mb-4">Client Information</p>
                                        <p class="mb-1">John Doe, Mrs Emma Downson</p>
                                        <p>Acme Inc</p>
                                        <p class="mb-1">Berlin, Germany</p>
                                        <p class="mb-1">6781 45P</p>
                                    </div>

                                    <div class="col-md-6 text-right">
                                        <p class="font-weight-bold mb-4">Payment Details</p>
                                        <p class="mb-1"><span class="text-muted">VAT: </span> 1425782</p>
                                        <p class="mb-1"><span class="text-muted">VAT ID: </span> 10253642</p>
                                        <p class="mb-1"><span class="text-muted">Payment Type: </span> Root</p>
                                        <p class="mb-1"><span class="text-muted">Name: </span> John Doe</p>
                                    </div>
                                </div>

                                <div class="row p-5">
                                    <div class="col-md-12">
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th class="border-0 text-uppercase small font-weight-bold">ID</th>
                                                <th class="border-0 text-uppercase small font-weight-bold">Item</th>
                                                <th class="border-0 text-uppercase small font-weight-bold">Description</th>
                                                <th class="border-0 text-uppercase small font-weight-bold">Quantity</th>
                                                <th class="border-0 text-uppercase small font-weight-bold">Unit Cost</th>
                                                <th class="border-0 text-uppercase small font-weight-bold">Total</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Software</td>
                                                <td>LTS Versions</td>
                                                <td>21</td>
                                                <td>$321</td>
                                                <td>$3452</td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Software</td>
                                                <td>Support</td>
                                                <td>234</td>
                                                <td>$6356</td>
                                                <td>$23423</td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Software</td>
                                                <td>Sofware Collection</td>
                                                <td>4534</td>
                                                <td>$354</td>
                                                <td>$23434</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="d-flex flex-row-reverse bg-dark text-white p-4">
                                    <div class="py-3 px-5 text-right">
                                        <div class="mb-2">Grand Total</div>
                                        <div class="h2 font-weight-light">$234,234</div>
                                    </div>

                                    <div class="py-3 px-5 text-right">
                                        <div class="mb-2">Discount</div>
                                        <div class="h2 font-weight-light">10%</div>
                                    </div>

                                    <div class="py-3 px-5 text-right">
                                        <div class="mb-2">Sub - Total amount</div>
                                        <div class="h2 font-weight-light">$32,432</div>
                                    </div>
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
