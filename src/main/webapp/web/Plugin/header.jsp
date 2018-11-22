<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/assets/plugin/jquery.page.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript">
    $(document).ready(function () {
        var status = false;
        $('ul li a').each(function () {
            if(this.href == window.location.href){
                $(this).addClass('active');
                status = true;
            }
        });
        if(!status) {$('ul li a').eq(0).addClass('active');}
    });
</script>
<div class="w_header">
	<div class="container">
		<div class="w_header_top">
			<a href="#" class="w_logo"></a>
			<span class="w_header_nav">
			<ul>
				<li><a href="${pageContext.request.contextPath}/index.do">首页</a></li>
				<c:forEach var="menu" items="${menus }" varStatus="status">
					<li><a href="${pageContext.request.contextPath}/${menu.menuUrl }">${menu.menuName }</a></li>
				</c:forEach>
			</ul>
			</span>
			<div class="w_search">
				<div class="w_searchbox">
					<input type="text" placeholder="search" />
					<button>搜索</button>
				</div>
			</div>
		</div>
	</div>
</div>