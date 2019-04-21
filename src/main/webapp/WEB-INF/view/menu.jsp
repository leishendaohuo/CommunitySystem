<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
                            <i class="icon icon-target"></i> 社团 <i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="communitymessage" class="nav-link">
                                    <i class="icon icon-target"></i> 社团信息
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="communitymember" class="nav-link">
                                    <i class="icon icon-target"></i> 社团成员
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="communityactivity" class="nav-link">
                                    <i class="icon icon-target"></i> 社团活动
                                </a>
                            </li>

                        </ul>
                    </li>

                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-energy"></i> 用户 <i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                        	<li class="nav-item">
                                <a href="settings" class="nav-link">
                                    <i class="icon icon-energy"></i> 个人信息
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="settings" class="nav-link">
                                    <i class="icon icon-energy"></i> 修改信息
                                </a>
                            </li>

                        </ul>
                    </li>

                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-graph"></i> 申请入团 <i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="communityapply" class="nav-link">
                                    <i class="icon icon-graph"></i> 社团
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