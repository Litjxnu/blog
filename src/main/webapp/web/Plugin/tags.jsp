<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">热门标签</h3>
	</div>
	<div class="panel-body">
		<c:forEach var="tag" items="${tags }">
			<div class="labelList">
				<a class="label label-default" href="#">${tag.tagName}</a>
			</div>
		</c:forEach>
	</div>
</div>