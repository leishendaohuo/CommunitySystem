<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<body>
<div class="page-container">
		 
		<h1>当前用户</h1>
		头像：<%=(String)session.getAttribute("headimg")%><br>
		id：<%=(Integer)session.getAttribute("id")%><br>
		用户名：<%=(String)session.getAttribute("username")%><br>
		身份：<%=(String)session.getAttribute("usertype")%><br>
		所属社团：<%=(String)session.getAttribute("belongcommunity")%><br>
		<h1>查询id</h1>
		<form action="/maven.CommunitySystem/user/select" method="post">
		<input type="text" id="username" name="username" class="username"
				placeholder="请输入用户名" pattern="[A-Za-z0-9]{5,15}" required="required"><br>
			id：<input type="text" name="id" value="${requestScope.id}"/><br>
			密码：<input type="text" name="pwd" value="${requestScope.password}"/><br>
			用户名：<input type="text" name="name" value="${requestScope.username}"/><br>
			注册时间：<input type="text" name="createtime" value="${requestScope.createtime}"/><br>
			<div id="login-error" style="color: #F00">${requestScope.message}</div>
			<button type="submit">确认</button>
		</form>
		
		<h1>更新用户名</h1>
		<form action="/maven.CommunitySystem/user/update" method="post">
			<input type="text" id="oldname" name="oldname" class="oldname"
				placeholder="请输入旧用户名" pattern="[A-Za-z0-9]{5,15}" required="required"><br>
			<input type="text" id="newname" name="newname" class="newname"
				placeholder="请输入新用户名" pattern="[A-Za-z0-9]{5,15}" required="required"><br>
			<button type="submit">确认</button>
			<div id="login-error" style="color: #F00">${requestScope.message2}</div>
		</form>
		
		<h1>添加用户</h1>
		<form action="/maven.CommunitySystem/user/insert" method="post">
			<input type="text" id="newusername" name="newusername" class="newusername"
				placeholder="请输入用户名" pattern="[A-Za-z0-9]{5,15}" required="required"><br>
			<input type="text" id="newpassword" name="newpassword" class="newpassword"
				placeholder="请输入密码" pattern="[A-Za-z0-9]{5,15}" required="required"><br>
			<div id="login-error" style="color: #F00">${requestScope.message3}</div>
			<button type="submit">确认</button>
		</form>
		
		<h1>删除用户</h1>
		<form action="/maven.CommunitySystem/user/delete" method="post">
			<input type="text" id="deletename" name="deletename" class="deletename"
				placeholder="请输入要删除的用户名" pattern="[A-Za-z0-9]{5,15}" required="required"><br>
			<input type="text" id="deletepwd" name="deletepwd" class="deletepwd"
				placeholder="请输入密码" pattern="[A-Za-z0-9]{5,15}" required="required"><br>
			<div id="login-error" style="color: #F00">${requestScope.message4}</div>
			<button type="submit">确认</button>
		</form>
	</div>
</body>
</html>
