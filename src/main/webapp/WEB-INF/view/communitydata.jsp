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
            <td>${list.name}</td>
            <td>${list.createdate}</td>
            <td>${list.recommend}</td>
            <td>${list.award}</td>
            <td>${list.creator}</td>
            <td>${list.number}</td>
            <td>
            <c:choose>
				<c:when test="${list.name== community}">
					<c:choose>
						<c:when test="${status==0}">
							<button class="btn btn-outline-primary" data-toggle="modal" data-target="#modal-4">
							申请
				    		</button>
				    		<div class="modal fade" id="modal-4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
							    <div class="modal-dialog" role="document">
							        <div class="modal-content">
							            <div class="modal-header">
							                <h5 class="modal-title">申请确认</h5>
							                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							                    <span aria-hidden="true">&times;</span>
							                </button>
							            </div>
							
							            <div class="modal-body">
							                	确认申请加入该社团吗？
							            </div>
							
							            <div class="modal-footer">
							                <button type="button" class="btn btn-link" data-dismiss="modal">再想想</button>
							            	<a href="toapply?community=${list.name}" class="nav-link active">
							                	<button type="button" class="btn btn-primary">确认</button>
							            	</a>
							            </div>
							        </div>
							    </div>
							</div>
						</c:when>
						<c:when test="${status==1}">
							<button class="btn btn-outline-primary" data-toggle="modal" data-target="#modal-8">
				    		申请中
				    		</button>
				    		<div class="modal fade" id="modal-8" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
							    <div class="modal-dialog" role="document">
							        <div class="modal-content">
							            <div class="modal-header">
							                <h5 class="modal-title">取消申请</h5>
							                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							                    <span aria-hidden="true">&times;</span>
							                </button>
							            </div>
							
							            <div class="modal-body">
							                	确认取消申请加入该社团吗？
							            </div>
							
							            <div class="modal-footer">
							                <button type="button" class="btn btn-link" data-dismiss="modal">再想想</button>
							            	<a href="tocancel?community=${list.name}" class="nav-link active">
							                	<button type="button" class="btn btn-primary">确认</button>
							            	</a>
							            </div>
							        </div>
							    </div>
							</div>
						</c:when>
						<c:when test="${status==2}">
							<button class="btn btn-outline-primary" data-toggle="modal" data-target="#modal-5">
							已通过
				    		</button>
						</c:when>
					</c:choose>
				</c:when>
				<c:otherwise>
					<button class="btn btn-outline-primary" data-toggle="modal" data-target="#modal-4">
					申请
				    </button>
				    <div class="modal fade" id="modal-4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
							    <h5 class="modal-title">申请确认</h5>
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							            <span aria-hidden="true">&times;</span>
							        </button>
							    </div>
							
							    <div class="modal-body">
							                确认申请加入该社团吗？
							    </div>
							
							    <div class="modal-footer">
							        <button type="button" class="btn btn-link" data-dismiss="modal">再想想</button>
							        	<a href="toapply?community=${list.name}" class="nav-link active">
							               	<button type="button" class="btn btn-primary">确认</button>
							            </a>
							    </div>
							</div>
						</div>
					</div>
				</c:otherwise>
				</c:choose>
            </td>
         </tr>
	</c:forEach>
	
</body>
</html>