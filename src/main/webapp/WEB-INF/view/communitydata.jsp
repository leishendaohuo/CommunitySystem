<%@page import="maven.CommunitySystem.web.communityController"%>
<%@page import="maven.CommunitySystem.dao.ICommunityDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="maven.CommunitySystem.entity.Community"%>
<%@page import="maven.CommunitySystem.service.impl.CommunityServiceImpl"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<c:forEach items="${list}" var="list">
         <tr>
            <td>${list.id}</td>
            <td>${list.communityname}</td>
            <td>${list.url}</td>
            <td>${list.createtime}</td>
            <td>${list.membernum}</td>
         </tr>
	</c:forEach>
</body>
</html>