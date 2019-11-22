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
	<title>艺术家详情</title>
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
</head>

<body>
<!--header star-->
<c:import url="${ctx}/atrs/communal/header.jsp"/>
<!--header end-->

<!--navbar star-->
<div class="navbar clearfix">
	<div class="content clearfix">
		<ul>
			<li><a href="${ctx}/atrs/pre/index.jsp">首页</a></li>
			<li><a href="${ctx}/sessionServlet?ty=session">专场</a></li>
			<li ><a href="${ctx}/atrs/pre/mall.jsp">商城</a></li>
			<li class="cur"><a href="${ctx}/atrs/pre/artist.jsp">艺术家</a></li>
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
				您的位置：<a href="artist.html">艺术家</a>&nbsp;&gt;&nbsp;${ae.name}
			</div>
		</div>
	</div>
	<!--sorts end-->

	<!--artist-detail star-->
	<div class="adetail clearfix">
		<div class="adetails clearfix box-s">
			<div class="top clearfix">
				<div class="left clearfix fl box-s">
					<div class="tu clearfix">

						<img src="${ctx}/atrs/statics/files/touxiang/${ae.imagePath}"/>
						<span></span>
					</div>
					<div class="xia clearfix">
						<ul>
							<li class="box-s">
								<p>${ae.visit}</p>
								<span>访问量</span>
							</li>
							<li class="box-s">
								<p>${count}</p>
								<span>作品</span>
							</li>
							<li class="last box-s">
								<p>${ae.attention}</p>
								<span>粉丝</span>
							</li>
						</ul>
					</div>
				</div>
				<div class="right clearfix fr">
					<div class="shang clearfix">
						<span class="fl">${ae.name}</span>
						<a href="#" class="fr ra3 transition">关注+</a>
						<!--下面注释内容为已关注状态样式-->
						<!--<a href="#" class="fr ra3 transition cur">取消关注</a>-->
					</div>
					<div class="ctentheight clearfix" id="main2">
						<%--<span class="more-button">展开</span>--%>
						<div class="zhong clearfix">
							<p>基本信息：</p>
							<ul>
								<li>中文名：${ae.name}</li>
								<li>国    籍：${ae.nationality}</li>

								<li>出生日期：${user.birthday}</li>

								<li>出生地：${ae.address}</li>
								<li>毕业院校：${ae.school}</li>
							</ul>
						</div>
						<div class="zhong clearfix">
							<p>个人简历：</p>
							<ul>
								<li>${ae.synopsis}</li>
							</ul>
						</div>

					</div>
				</div>
			</div>

			<div class="bottom clearfix box-s">
				<div class="shang clearfix box-s">
					<span>相关作品</span>
				</div>
				<div class="xia clearfix">
					<c:forEach var="pst" items="${st}" >
					<div class="list clearfix box-s fl">
						<a href="${ctx}/ProductServlet?pid=${pst.id}&ty=commodit">
							<div class="main_img">
								<em></em>
								<img src="${ctx}/atrs/statics/files/zuopin/${pst.imagePath}">


								<div class="show" title=>
											<span class="imgArea">
												<samp title="" class="over">${pst.name}</samp>
											</span>
								</div>


							</div>
						</a>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<!--artist-detail end-->

</div>

<!--mall end-->

<!--footer star-->

<c:import url="${ctx}/atrs/communal/footer.jsp"/>
<!--footer end-->
</body>
<script src="${ctx}/atrs/statics/js/other.js" type="text/javascript" ></script>
</html>