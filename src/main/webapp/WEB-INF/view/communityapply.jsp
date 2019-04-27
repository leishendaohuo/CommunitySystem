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
    <title>社团信息</title>
    <link href="<%=basePath%>assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  	<link href="<%=basePath%>assets/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  	<link href="<%=basePath%>assets/css/sb-admin.css" rel="stylesheet">
    
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
			<div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> 社团列表</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
				<tr>
					<th>社团名称</th>
					<th>创建时间</th>
					<th>社团简介</th>
					<th>荣誉</th>
					<th>创建人</th>
					<th>成员人数</th>
					<th>申请加入</th>
				</tr>
			</thead>
              	<tbody>
                	<jsp:include page="communitydata.jsp"></jsp:include>
                </tbody>
            </table>
          </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div>
        </div>
    </div>
</div>

<footer class="lowin-footer">
		<%=request.getParameter("applycommunity-message")%>
</footer>

<script src="<%=basePath%>assets/vendor/jquery/jquery.min.js"></script>
<script src="<%=basePath%>assets/vendor/popper.js/popper.min.js"></script>
<script src="<%=basePath%>assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=basePath%>assets/vendor/chart.js/chart.min.js"></script>
<script src="<%=basePath%>assets/js/carbon.js"></script>
<script src="<%=basePath%>assets/js/demo.js"></script>

<script src="<%=basePath%>assets/vendor/jquery/jquery.min.js"></script>
<script src="<%=basePath%>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<%=basePath%>assets/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="<%=basePath%>assets/vendor/datatables/jquery.dataTables.js"></script>
<script src="<%=basePath%>assets/vendor/datatables/dataTables.bootstrap4.js"></script>
<script src="<%=basePath%>assets/js/sb-admin.min.js"></script>
<script src="<%=basePath%>assets/js/sb-admin-datatables.min.js"></script>
</body>
</html>
