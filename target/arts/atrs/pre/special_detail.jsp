<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>

	<head>
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta charset='utf-8'>
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<title>专场详情</title>
		<meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta http-equiv="Cache-Control" content="no-siteapp">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
		<meta name="keywords" content="">
		<meta name="description" content="">
		<link rel="stylesheet" type="text/css" href="${ctx}/atrs/statics/css/page.css" />
		<link rel="stylesheet" type="text/css" href="${ctx}/atrs/statics/css/base.css" />
		<script src="${ctx}/atrs/statics/js/jquery-1.8.3.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="${ctx}/atrs/statics/js/jquery.SuperSlide.2.1.js"></script>
		<script type="text/javascript" src="${ctx}/atrs/statics/js/session/session.js"></script>
	</head>

	<body>
	<c:import url="${ctx}/atrs/communal/header.jsp"/>

		<!--navbar star-->
	<div class="navbar clearfix">
		<div class="content clearfix">
			<ul>
				<li ><a href="${ctx}/atrs/pre/index.jsp">首页</a></li>
				<li  class="cur"><a href="${ctx}/sessionServlet?ty=session">专场</a></li>
				<li ><a href="${ctx}/atrs/pre/mall.jsp">商城</a></li>
				<li><a href="${ctx}/atrs/pre/artist.jsp">艺术家</a></li>
			</ul>
		</div>
	</div>
		<!--navbar end-->

		<!--mall star-->
		<div class="mall clearfix">
			<!--sorts star-->
			<div class="sorts clearfix">
				<div class="content clearfix">
					<div class="top clearfix box-s">
						您的位置：<a href="special.html">专场</a>&nbsp;&gt;&nbsp;文艺复兴专场
					</div>
					<div class="spdetail clearfix mt25">
						<div class="hd">
							<ul>
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</div>
						<div class="bd">
							<ul>
								<c:forEach var="pr" items="${slist}" begin="1" end="3">
									<li><input id="sid" type="hidden" value="${pr.sid}"><a href="#"><img src="${ctx}/atrs/statics/files/zuopin/${pr.imagePath}" /></a></li>

								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!--sorts end-->
			<script type="text/javascript">
				 sid = $("#sid").val();
				log(sid)
			</script>
			<!--sales star-->
			<div class="sales clearfix">
				<div class="content clearfix">
					<div class="top clearfix">
						<div class="left clearfix fl">
							<!--以下li中添加cur的时候是选中的时候-->
							<ul>
								<li onclick="log(sid)">综合排序</li>
								<li class="xliang cur" onclick="psort(sid)">价格</li>
								<li class="xpin" onclick="nsort(sid)">新品</li>
							</ul>
						</div>
					</div>

						<div id="shangp">

						</div>
					</div>

				</div>
			</div>
			<!--sales end-->

		<!--mall end-->
	<c:import url="${ctx}/atrs/communal/footer.jsp"/>
	</body>
	<script src="${ctx}/atrs/statics/js/other.js" type="text/javascript" ></script>
</html>