<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>个人博客</title>
</head>

<link href="${pageContext.request.contextPath}/resource/assets/plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/assets/css/common.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/assets/css/article_detail.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/assets/plugin/jquery.page.css">
<script src="${pageContext.request.contextPath}/resource/assets/plugin/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/assets/plugin/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/assets/js/common.js"></script>
<!--<script src="js/snowy.js"></script>-->

<body>
	<%@include file="Plugin/header.jsp"%>
	<div class="w_container">
		<div class="container">
			<div class="row w_main_row">
				
				<ol class="breadcrumb w_breadcrumb">
				  <li><a href="${pageContext.request.contextPath}/index.do">首页</a></li>
				  <%-- <li><a href="${pageContext.request.contextPath}/${menu.menuUrl }">${menu.menuName }</a></li> --%>
				  <li class="active">${article.articleTitle }</li>
				  <span class="w_navbar_tip">长路漫漫，只因学无止境。</span>
				</ol>
				
				<div class="col-lg-9 col-md-9 w_main_left">
					<div class="panel panel-default">
						<div class="panel-body">
							<h2 class="c_titile">${article.articleTitle }</h2>
							<p class="box_c">
								<span class="d_time">发布时间：<fmt:formatDate value="${article.articlePostTime }" type="date"/></span>
								<span>编辑：${blogger.bloggerName }</span>
								<span>浏览（${article.articleViewCount }）</span>
							</p>
							<ul class="infos">
								${article.articleContent }
							</ul>
															
							<div class="keybq">
						    	<p><span>标签</span>：
						    		<a class="label label-default">java</a>
						    	</p>    
						    </div>
							
							
							<!-- <div class="nextinfo">
								<p class="last">上一篇：<a href="#">免费收录网站搜索引擎登录口大全</a></p>
								<p class="next">下一篇：<a href="#">javascript显示年月日时间代码</a></p>
						    </div> -->
							
						</div>
					</div>
					
					<%-- <div class="panel panel-default">
						<div class="panel-body">
							<center><div id="cyReward" role="cylabs" data-use="reward" sid="5eab7e4c363e4cb8bed0efa3604e6b42"></div></center>
							<!--<div id="cyEmoji" role="cylabs" data-use="emoji" sid="5eab7e4c363e4cb8bed0efa3604e6b42"></div>-->
							<script type="text/javascript" charset="utf-8" src="https://changyan.itc.cn/js/lib/jquery.js"></script>
							<script type="text/javascript" charset="utf-8" src="https://changyan.sohu.com/js/changyan.labs.https.js?appid=cysPwLFm1"></script>
							
							
							<!--PC版-->
							<!--<div id="SOHUCS" sid="5eab7e4c363e4cb8bed0efa3604e6b42"></div>
							<script charset="utf-8" type="text/javascript" src="https://changyan.sohu.com/upload/changyan.js" ></script>							
							<script type="text/javascript">
							window.changyan.api.config({
							appid: 'cysPwLFm1',
							conf: 'prod_6c6350e206c502f569b865b4bf121e60'
							});
							</script>-->
							<!-- 多说评论框 start -->
								<div class="ds-thread" data-thread-key="testarticle" data-title="我的个人博客之——阿里云空间选择" data-url="http://127.0.0.1:8020/wilco/article_detail.html"></div>
							<!-- 多说评论框 end -->
							<!-- 多说公共JS代码 start (一个网页只需插入一次) -->
							<script type="text/javascript">
							var duoshuoQuery = {short_name:"wfyvv"};
								(function() {
									var ds = document.createElement('script');
									ds.type = 'text/javascript';ds.async = true;
									ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
									ds.charset = 'UTF-8';
									(document.getElementsByTagName('head')[0] 
									 || document.getElementsByTagName('body')[0]).appendChild(ds);
								})();
								</script>
							<!-- 多说公共JS代码 end -->
							
						</div>
					</div> --%>
				</div>
				<div class="col-lg-3 col-md-3 w_main_right">
					
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