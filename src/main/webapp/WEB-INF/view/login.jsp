<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>login</title>
	<link rel="stylesheet" href="<%=basePath%>assets/css/auth.css">
</head>
<body style="background: url(<%=basePath%>/assets/img/backgrounds/12.jpg);background-size:cover;"> 
	<div class="lowin lowin-blue">
		<div class="lowin-brand">
			<img src="<%=basePath%>assets/img/backgrounds/11.jpg" alt="logo">
		</div>
		<div class="lowin-wrapper">
			<div class="lowin-box lowin-login">
				<div class="lowin-box-inner">
					<form>
						<p>Sign in to continue</p>
						<div class="lowin-group">
							<label>ID <a href="#" class="login-back-link">Sign in?</a></label>
							<input type="text" autocomplete="id" name="id" 
							placeholder="请输入学号" pattern="[0-9]{6,15}" class="lowin-input">
						</div>
						<div class="lowin-group password-group">
							<label>Password <a href="#" class="forgot-link">Forgot Password?</a></label>
							<input type="password" name="password" autocomplete="current-password" 
							placeholder="请输入密码" pattern="[0-9]{6,15}" class="lowin-input">
						</div>
						<button class="lowin-btn login-btn">
							Sign In
						</button>

						<div class="text-foot">
							Don't have an account? <a href="" class="register-link">Register</a>
						</div>
					</form>
				</div>
			</div>

			<div class="lowin-box lowin-register">
				<div class="lowin-box-inner">
					<form>
						<p>Let's create your account</p>
						<div class="lowin-group">
							<label>ID</label>
							<input type="text" name="id" autocomplete="id" 
							placeholder="请输入学号" pattern="[0-9]{6,15}" class="lowin-input">
						</div>
						<div class="lowin-group">
							<label>Username</label>
							<input type="text" autocomplete="username" name="username" 
							placeholder="请输入您的名字" class="lowin-input">
						</div>
						<div class="lowin-group">
							<label>Password</label>
							<input type="password" name="password" autocomplete="current-password"
							placeholder="请输入密码" pattern="[0-9]{6,15}" class="lowin-input">
						</div>
						<button class="lowin-btn">
							Sign Up
						</button>

						<div class="text-foot">
							Already have an account? <a href="" class="login-link">Login</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	
		<footer class="lowin-footer">
		${message}
		</footer>
	</div>

	<script src="<%=basePath%>assets/js/auth.js"></script>
	<script>
		Auth.init({
			login_url: 'login',
			forgot_url: 'forgot',
		});
	</script>
</body>
</html>
