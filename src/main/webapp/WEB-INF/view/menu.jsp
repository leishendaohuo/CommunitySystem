<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background: url(<%=basePath%>/assets/img/backgrounds/12.jpg);background-size:cover;"> 
            <nav class="sidebar-nav">
                <ul class="nav">
                    <li class="nav-title">Navigation</li>

                    <li class="nav-item">
                        <a href="index" class="nav-link active">
                            <i class="icon icon-speedometer"></i> 首页
                        </a>
                    </li>

                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-target"></i> 我的 <i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="usermessage" class="nav-link">
                                    <i class="icon icon-target"></i> 个人信息
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="settings" class="nav-link">
                                    <i class="icon icon-target"></i> 修改信息
                                </a>
                            </li>

                        </ul>
                    </li>

                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-energy"></i> 社团 <i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                        	<li class="nav-item">
                                <a href="communitymessage" class="nav-link">
                                    <i class="icon icon-energy"></i> 我的社团
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="communitymember" class="nav-link">
                                    <i class="icon icon-energy"></i> 成员列表
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="communityactivity" class="nav-link">
                                    <i class="icon icon-energy"></i> 社团活动
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="createcommunity" class="nav-link">
                                    <i class="icon icon-energy"></i> 创建社团
                                </a>
                            </li>

                        </ul>
                    </li>

                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-graph"></i> 申请入社 <i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="communityapply" class="nav-link">
                                    <i class="icon icon-graph"></i> 社团列表
                                </a>
                            </li>
                        </ul>
                    </li>
                    
                    <li class="nav-item">
                        <a href="login" class="nav-link">
                            <i class="icon icon-puzzle"></i> 切换账号
                        </a>
                    </li>
                </ul>
                
            </nav>
</body>
</html>