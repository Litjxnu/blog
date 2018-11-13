<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">最新发布</h3>
	</div>
	<div class="panel-body">
		<ul class="list-unstyled sidebar">
			<c:forEach var="dateArticle" items="${dateArticles }">
				<li><a href="#">${dateArticle.articleTitle}</a></li>
			</c:forEach>
		</ul>
	</div>
</div>