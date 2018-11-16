<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="/WEB-INF/myTag.tld" prefix="filter" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>个人博客</title>
</head>

<link href="${pageContext.request.contextPath}/resource/assets/plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/assets/css/common.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/assets/css/article.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/assets/plugin/jquery.page.css">
<link href="logo.ico" rel="shortcut icon"/>
<script src="${pageContext.request.contextPath}/resource/assets/plugin/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/assets/plugin/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/assets/plugin/jquery.page.js"></script>
<script src="${pageContext.request.contextPath}/resource/assets/js/common.js"></script>
<!--<script src="js/snowy.js"></script>-->
<script type="text/javascript">
	
$(function(){
	$("#page").Page({
	  totalPages: 3,//分页总数
	  liNums: 3,//分页的数字按钮数(建议取奇数)
	  activeClass: 'activP', //active 类样式定义
	  callBack : function(page){
			//console.log(page)
	  }
  });
})
</script>

<body>
	<%@include file="Plugin/header.jsp"%>
	<div class="w_container">
		<div class="container">
			<div class="row w_main_row">
				
				<ol class="breadcrumb w_breadcrumb">
				  <li><a href="${pageContext.request.contextPath}/index.do">首页</a></li>
				  <li class="active">${menu.menuName }</li>
				  <span class="w_navbar_tip">长路漫漫，学无止境。</span>
				</ol>
				
				<div class="col-lg-9 col-md-9 w_main_left">
					<div class="panel panel-default">
					  <div class="panel-body contentList">
					  	
						<c:forEach var="menuArticle" items="${menuArticles }" varStatus="status">
							<div class="panel panel-default w_article_item">
								<div class="panel-body" style="height:200px;">
									<div class="row" style="height:170px;">
										<div class="col-xs-6 col-md-3">
											<a href="#" class="thumbnail w_thumbnail">
											<img src="${pageContext.request.contextPath}/resource/assets/img/aticleview${status.index}.jpg" alt="...">
											</a>
										</div>
				  						<h4 class="media-heading">
											<a class="title" href="${pageContext.request.contextPath}/article/${status.index}.do">${menuArticle.articleTitle }</a>
										</h4>
										<p class="overView"><filter:htmlFilter>${menuArticle.articleContent }</filter:htmlFilter>......</p>
										<p class="count_r">
											<span class="count"><i class="glyphicon glyphicon-user"></i><a href="#">${blogger.bloggerName }</a></span>
											<span class="count"><i class="glyphicon glyphicon-eye-open"></i>浏览:${menuArticle.articleViewCount }</span>
											<span class="count"><i class="glyphicon glyphicon-comment"></i>评论:${menuArticle.articleCommentCount }</span>
											<span class="count"><i class="glyphicon glyphicon-time"></i><fmt:formatDate value="${menuArticle.articlePostTime }" type="both" /></span>
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
						
						
						<!--<div class="page">
							<nav aria-label="Page navigation">
						  <ul class="pagination">
						    <li>
						      <a href="#" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						      </a>
						    </li>
						    <li class="active"><a href="#">1</a></li>
						    <li><a href="#">2</a></li>
						    <li><a href="#">3</a></li>
						    <li><a href="#">4</a></li>
						    <li><a href="#">5</a></li>
						    <li>
						      <a href="#" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						      </a>
						    </li>
						  </ul>
						</nav>
						</div>-->
						<div id="page">
							
						</div>
						
						
					  </div>
					</div>
					
				</div>
				<div class="col-lg-3 col-md-3 w_main_right">
				
					<%@include file="Plugin/tags.jsp"%>
					
					<%@include file="Plugin/dateArticle.jsp"%>
					
					<%@include file="Plugin/link.jsp"%>
				</div>
			
			
			</div>
		</div>
	</div>
	<%@include file="Plugin/footer.jsp"%>
	<!--toTop-->
	<div id="shape">
		<div class="shapeColor">
			<div class="shapeFly">
			</div>
		</div>
	</div>
	<!--snow-->
	<!--<div class="snow-container"></div>-->
</body>
</html>