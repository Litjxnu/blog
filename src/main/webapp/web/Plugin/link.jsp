<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">友情链接</h3>
	</div>
	<div class="panel-body">
		<div class="newContent">
			<ul class="list-unstyled sidebar shiplink">
				<c:forEach var="link" items="${links }">
					<li><a href="${link.linkUrl }" target="_blank">${link.linkName }</a>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>