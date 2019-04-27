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
    <title>我的信息</title>
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
                                        	社团信息
                                    </div>

                                    <div class="col-md-6 text-right">
                                        <p class="font-weight-bold mb-1">欢迎</p>
                                        <p class="text-muted">Due to: 4 Dec, 2019</p>
                                    </div>
                                </div>

                                <hr class="my-5">

                                <div class="row pb-5 p-5">
                                    <div class="col-md-6">
	                                    <div class="alert alert-dismissible alert-success">
	                                    	社团名称: <%=session.getAttribute("community-name")%>
	                                    	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
	                                        	<span aria-hidden="true">&times;</span>
	                                    	</button>
                                		</div>
                                		 <div class="alert alert-dismissible alert-warning">
	                                    	创建日期：<%=(String)session.getAttribute("community-createdate")%>
	                                    	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
	                                        	<span aria-hidden="true">&times;</span>
	                                    	</button>
                                		</div>
                                		 <div class="alert alert-dismissible alert-danger">
	                                    	简介:：<%=(String)session.getAttribute("community-recommend")%>
	                                    	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
	                                        	<span aria-hidden="true">&times;</span>
	                                    	</button>
                                		</div>
                                		 <div class="alert alert-dismissible alert-info">
	                                    	荣誉：<%=(String)session.getAttribute("community-award")%>
	                                    	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
	                                        	<span aria-hidden="true">&times;</span>
	                                    	</button>
                                		</div>
                                		 <div class="alert alert-dismissible alert-secondary">
	                                    	成员数量：<%=(String)session.getAttribute("community-number")%>
	                                    	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
	                                        	<span aria-hidden="true">&times;</span>
	                                    	</button>
                                		</div>
                                		<div class="alert alert-dismissible alert-secondary">
	                                    	创建者：<%=(String)session.getAttribute("community-creator")%>
	                                    	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
	                                        	<span aria-hidden="true">&times;</span>
	                                    	</button>
                                		</div>
                                		 
                                    </div>

                                    <div class="col-md-6 text-right">
                                        
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
