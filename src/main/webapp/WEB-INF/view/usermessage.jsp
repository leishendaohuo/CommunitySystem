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
    <title>用户信息</title>
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
                            <a href="#" class="list-group-item">Profile</a>
                            <a href="#" class="list-group-item active">Account Settings</a>
                            <a href="#" class="list-group-item">Notifications</a>
                            <a href="#" class="list-group-item">Subscription</a>
                        </div>
                    </div>

                    <div class="col-md-10">
                    <form action="/maven.CommunitySystem/user/changes" method="post">
                        <div class="card">
                            <div class="card-header bg-light">
                                	更改信息
                            </div>
                            <div class="card-body">
                                <div class="row mb-5">
                                    <div class="col-md-4 mb-4">
                                        <div>Profile Information</div>
                                        <div class="text-muted small">These information are visible to the public.</div>
                                    </div>

                                    <div class="col-md-8">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-control-label">Old Username</label>
                                                    <input type="oldusername" name="oldusername" readonly="readonly" value=<%=(String)session.getAttribute("username")%> class="form-control">
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-control-label">New Username</label>
                                                    <input type="newusername" name="newusername" value="" class="form-control">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-control-label">Old Email Address</label>
                                                    <input type="oldemail" name="oldemail" readonly="readonly" value=<%=(String)session.getAttribute("email")%> class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-control-label">New Email Address</label>
                                                    <input type="newemail" name="newemail" value="" class="form-control">
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <hr>

                                <div class="row mt-5">
                                    <div class="col-md-4 mb-4">
                                        <div>更改密码</div>
                                        <div class="text-muted small">Leave credentials fields empty if you don't wish to change the password.</div>
                                    </div>

                                    <div class="col-md-8">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-control-label">Old Password</label>
                                                    <input type="oldpassword" name="oldpassword" readonly="readonly" value=<%=(String)session.getAttribute("password")%> class="form-control">
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="form-control-label">New Password</label>
                                                    <input type="newpassword" name="newpassword" value="" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card-footer bg-light text-right">
                                	<button type="submit" class="btn btn-primary">Save Changes</button>
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
