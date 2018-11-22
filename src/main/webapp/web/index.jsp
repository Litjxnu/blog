<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="/WEB-INF/myTag.tld" prefix="filter" %>
<!DOCTYPE html>
<html>

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
	<script type="text/javascript" src="${pageContext.request.contextPath}/resource/assets/plugin/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript">
        $(document).ready(function () {
            var status = false;
            $('.pagingUl li a').each(function () {
                if(this.href == window.location.href){
                    $(this).addClass('activP');
                    status = true;
                }
            });
            if(!status) {$('.pagingUl li a').eq(0).addClass('activP');}
        });
	</script>

	<body>
		<%@include file="Plugin/header.jsp"%>
		<div class="w_container">
			<div class="container">
				<div class="row w_main_row">
					<div class="col-lg-9 col-md-9 w_main_left">
						<!--滚动图开始-->
						<div class="panel panel-default">

							<div id="w_carousel" class="carousel slide w_carousel" data-ride="carousel">
								<!-- Indicators -->
								<ol class="carousel-indicators">
									<li data-target="#w_carousel" data-slide-to="0" class="active"></li>
									<li data-target="#w_carousel" data-slide-to="1"></li>
									<li data-target="#w_carousel" data-slide-to="2"></li>
									<li data-target="#w_carousel" data-slide-to="3"></li>
								</ol>

								<!-- Wrapper for slides -->
								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<img src="${pageContext.request.contextPath}/resource/assets/img/slider/slide1.jpg" alt="...">
										<div class="carousel-caption">
											<h3>First slide label</h3>
											<p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
										</div>
									</div>
									<div class="item">
										<img src="${pageContext.request.contextPath}/resource/assets/img/slider/slide2.jpg" alt="...">
										<div class="carousel-caption">...</div>
									</div>
									<div class="item">
										<img src="${pageContext.request.contextPath}/resource/assets/img/slider/slide3.jpg" alt="...">
										<div class="carousel-caption">...</div>
									</div>
									<div class="item">
										<img src="${pageContext.request.contextPath}/resource/assets/img/slider/slide4.jpg" alt="...">
										<div class="carousel-caption">...</div>
									</div>
								</div>

								<!-- Controls -->
								<a class="left carousel-control" href="#w_carousel" role="button" data-slide="prev">
									<span class="glyphicon glyphicon-chevron-left"></span>
									<span class="sr-only">Previous</span>
								</a>
								<a class="right carousel-control" href="#w_carousel" role="button" data-slide="next">
									<span class="glyphicon glyphicon-chevron-right"></span>
									<span class="sr-only">Next</span>
								</a>
							</div>

						</div>

						<div class="panel panel-default contenttop">
							<a href="article_detail.html">
								<strong>博主置顶</strong>
								<h3 class="title">${notice.noticeTitle }</h3>
								<p class="overView">${notice.noticeContent}</p>
							</a>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">最热浏览</h3>
							</div>

							<div class="panel-body contentList">

								<!--文章列表开始-->
								<c:forEach var="listArticle" items="${pageUtil.lists }" varStatus="status">
									<div class="panel panel-default w_article_item">
										<div class="panel-body" style="height:200px;">
											<div class="row" style="height:170px;">
												<div class="col-xs-6 col-md-3">
													<a href="#" class="thumbnail w_thumbnail">
														<img src="${pageContext.request.contextPath}/resource/assets/img/aticleview${status.index}.jpg" alt="...">
													</a>
												</div>
				  								<h4 class="media-heading">
												  	<a class="title" href="${pageContext.request.contextPath}/article/${status.index }.do">${listArticle.articleTitle }</a>
												</h4>
												<p class="overView"><filter:htmlFilter>${listArticle.articleContent }</filter:htmlFilter>......</p>
												<p class="count_r">
													<span class="count"><i class="glyphicon glyphicon-user"></i><a href="#">${blogger.bloggerName }</a></span>
													<span class="count"><i class="glyphicon glyphicon-eye-open"></i>浏览:${listArticle.articleViewCount }</span>
													<span class="count"><i class="glyphicon glyphicon-comment"></i>评论:${listArticle.articleCommentCount }</span>
													<span class="count"><i class="glyphicon glyphicon-time"></i><fmt:formatDate value="${listArticle.articlePostTime }" type="both" /></span>
												</p>
											</div>
										</div>
									</div>
								</c:forEach>
								<!--文章列表结束-->

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

					<!--左侧开始-->
					<div class="col-lg-3 col-md-3 w_main_right">

						<%@include file="Plugin/tags.jsp"%>

						<%@include file="Plugin/dateArticle.jsp"%>

						<%@include file="Plugin/link.jsp"%>

					</div>
				</div>
			</div>
		</div>
		<%@include file="Plugin/footer.jsp"%>
	</body>
	<script type="text/javascript">
		var $backToTopEle = $('<a href="javascript:void(0)" class="Hui-iconfont toTop" title="返回顶部" alt="返回顶部" style="display:none">^</a>').appendTo($("body")).click(function() {
			$("html, body").animate({ scrollTop: 0 }, 120);
		});
		var backToTopFun = function() {
			var st = $(document).scrollTop(),
				winh = $(window).height();
			(st > 0) ? $backToTopEle.show(): $backToTopEle.hide();
			/*IE6下的定位*/
			if(!window.XMLHttpRequest) {
				$backToTopEle.css("top", st + winh - 166);
			}
		};

		$(function() {
			$(window).on("scroll", backToTopFun);
			backToTopFun();
		});
	</script>

</html>