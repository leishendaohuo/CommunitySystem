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
<body>
<div class="page-wrapper flex-row align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 text-center">
                <span class="display-1 d-block">404</span>
                <div class="mb-4">The page you are looking for was not found.</div>
                <a href="#" class="btn btn-link">Back to Home</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
