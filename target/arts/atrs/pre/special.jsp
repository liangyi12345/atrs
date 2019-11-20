<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>

	<head>
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta charset='utf-8'>
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<title>专场</title>
		<meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta http-equiv="Cache-Control" content="no-siteapp">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
		<meta name="keywords" content="">
		<meta name="description" content="">
		<link rel="stylesheet" type="text/css" href="${ctx}/atrs/statics/css/page.css" />
		<link rel="stylesheet" type="text/css" href="${ctx}/atrs/statics/css/base.css" />
		<link rel="stylesheet" type="text/css" href="${ctx}/atrs/statics/css/common.css" />
		<script src="${ctx}/atrs/statics/js/jquery-1.8.3.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="${ctx}/atrs/statics/js/jquery.SuperSlide.2.1.js"></script>
		<script src="${ctx}/atrs/statics/js/common.js"></script>
		<script type="text/javascript" src="${ctx}/atrs/statics/js/jquery-1.8.3.min.js"></script>

	</head>
	<body>
	<c:import url="${ctx}/atrs/communal/header.jsp"/>
	<!--navbar star-->
	<div class="navbar clearfix">
		<div class="content clearfix">
			<ul>
				<li ><a href="${ctx}/atrs/pre/index.jsp">首页</a></li>
				<li class="cur"><a href="${ctx}/sessionServlet?ty=session">专场</a></li>
				<li><a href="${ctx}/atrs/pre/mall.jsp">商城</a></li>
				<li><a href="${ctx}/ArtistServlet?ty=ar">艺术家</a></li>
			</ul>
		</div>
	</div>

		<!--banner star-->
		<div class="banner">		
			<div class="bd">
				<ul>
					<li style="background:url(${ctx}/atrs/statics/img/banner.jpg) #194982 center 0 no-repeat;"><a target="_blank" href="#"></a></li>
				</ul>
			</div>
		</div>
		<!--banner end-->
		
		<!--specail star-->
		<div class="specail clearfix">
			<div class="top clearfix">
				<div class="recom-tit clearfix">
					<p class="engtit ta-center">
						SPECIAL CENTER
					</p>
					<div class="middle clearfix">
						<span class="line"></span>
						<span class="wenzi">专场中心</span>
						<span class="line"></span>
					</div>
					<p class="fu-tit">
						好作品无需多说 你会由心的看清它的诉说
					</p>
				</div>
			</div>

			<C:forEach var="sess" items="${smap}">
			<div class="content clearfix box-s">
				<div class="list clearfix fl box-s transition">
					<div class="tu clearfix fl">
						<c:forEach var="pr" items="${sess.value.slist}" begin="1" end="1">
							<a href="${ctx}/ProductServlet?pid=${pr.id}&ty=commodit"><img src="${ctx}/atrs/statics/files/zuopin/${pr.imagePath}"/></a>
							<span></span>
						</c:forEach>


					</div>
					<div class="right clearfix fr box-s">
						<div class="bt clearfix">
							${sess.value.title}
						</div>
						<div class="ctent clearfix mt20 over3">
							${sess.value.details}
						</div>
						<div class="zuopin clearfix">
							<ul>
								<c:forEach var="pr" items="${sess.value.slist}" begin="0" end="4">
									<li>
											<a href="${ctx}/ProductServlet?pid=${pr.id}&ty=commodit">
												<img src="${ctx}/atrs/statics/files/zuopin/${pr.imagePath}"/>
												<span></span>
											</a>
									</li>
								</c:forEach>

							</ul>
						</div>
						<a href="${ctx}/sessionServlet?id=${sess.value.id}&ty=detail" class="jinru ra3 transition">
							进入专场>
						</a>
					</div>
				</div>

			</div>

			</C:forEach>
		</div>
	<c:import url="${ctx}/atrs/communal/footer.jsp"/>
	</body>
	<script src="${ctx}/atrs/statics/js/other.js" type="text/javascript" ></script>
</html>