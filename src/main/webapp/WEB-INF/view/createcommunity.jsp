<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%request.setCharacterEncoding("utf-8"); %>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>创建社团</title>
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
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-2">
                        <div class="list-group">
                            <a href="#" class="list-group-item">未开发</a>
                            <a href="settings" class="list-group-item">用户信息修改</a>
                            <a href="#" class="list-group-item active">创建我的社团</a>
                            <a href="#" class="list-group-item">未开发</a>
                        </div>
                    </div>

                    <div class="col-md-10">
                    <form action="/maven.CommunitySystem/user/tocreatecommunity" method="get">
                        <div class="card">
                            <div class="card-header bg-light">
                                	我的社团信息
                            </div>
                            <div class="card-body">
                                <div class="row mb-5">
                                    <div class="col-md-4 mb-4">
                                        <div>信息</div>
                                        <div class="text-muted small">These information are visible to the public.</div>
                                    </div>
                                    <div class="col-md-8">
                                    	<div class="row">
                                            <div class="col-md-4">
		                                        <div class="form-group">
		                                            <label class="form-control-label">我的ID：<%=(String)session.getAttribute("id")%></label>
		                                        </div>
		                                    </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-control-label">Creator Name</label>
                                                    <input name="creator" readonly="readonly" value=<%=(String)session.getAttribute("username")%> class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-control-label">My Community Name</label>
                                                    <input name="name" value="" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
	                                        <div class="col-md-10">
	                                        	<div class="form-group">
	                                            	<label for="textarea">Recommend</label>
	                                            	<textarea id="recommend" name="recommend" class="form-control" rows="6"></textarea>
	                                        	</div>
                                    		</div>
                                        </div>
                                        <div class="row">
	                                        <div class="col-md-10">
	                                        	<div class="form-group">
	                                            	<label for="textarea">Award</label>
	                                            	<textarea id="award" name="award" class="form-control" rows="6"></textarea>
	                                        	</div>
                                    		</div>
                                        </div>
                                    </div>
                                </div>

                                <hr>

                            <div class="card-footer bg-light text-right">
                                	<button type="submit" class="btn btn-primary">创建</button>
                            </div>
                        </div>
                        </div>
                        </form>
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
