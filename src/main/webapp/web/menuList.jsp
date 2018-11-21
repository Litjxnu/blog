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
    $(document).ready(function () {
        $('.pagingUl li a').each(function () {
            if ($($(this))[0].href == String(window.location))
                $(this).addClass('activP');
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

						<div id="page">
						  <div class="next fr">
							  <a href="?currPage=${pageUtil.currPage<pageUtil.totalPage?pageUtil.currPage+1:pageUtil.totalPage}">></a>
						  </div>
						  <ul class="pagingUl">
							  <c:forEach begin="1" end="${pageUtil.totalPage}" var="i">
								  <li><a href="?currPage=${i}">${i}</a></li>
							  </c:forEach>
						  </ul>
						  <div class="prv fr">
							  <a href="?currPage=${pageUtil.currPage>1?pageUtil.currPage-1:1}"><</a>
						  </div>
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