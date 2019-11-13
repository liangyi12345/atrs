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
	</head>

	<body>
	<c:import url="${ctx}/atrs/communal/header.jsp"/>
		
		<!--navbar star-->
	<div class="navbar clearfix">
		<div class="content clearfix">
			<ul>
				<li ><a href="${ctx}/atrs/pre/index.jsp">首页</a></li>
				<li class="cur"><a href="${ctx}/atrs/pre/special.jsp">专场</a></li>
				<li><a href="${ctx}/ProductServlet?ty=pro">商城</a></li>
				<li><a href="${ctx}/ArtistServlet?ty=artis">艺术家</a></li>
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
									<li><a href="#"><img src="${ctx}/atrs/statics/files/zuopin/${pr.imagePath}" /></a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!--sorts end-->
			
			<!--sales star-->
			<div class="sales clearfix">
				<div class="content clearfix">
					<div class="top clearfix">
						<div class="left clearfix fl">
							<!--以下li中添加cur的时候是选中的时候-->
							<ul>
								<li>综合排序</li>
								<li class="xliang cur">价格</li>
								<li class="xpin">新品</li>
							</ul>
						</div>
					</div>
					<div class="bottom clearfix">
						<c:forEach var="pr" items="${slist}">
							<div class="list clearfix transition">
									<div class="tu clearfix">
										<a href="${ctx}/ProductServlet?pid=${pr.id}&ty=commodit"><img src="${ctx}/atrs/statics/files/zuopin/${pr.imagePath}"/></a>
										<span></span>

										<div class="ycang clearfix">
											<samp class="opa8"></samp>
											<div class="nr clearfix">
												<!--注意：当下方li中添加class名为cur的时候为选中的时候样式-->
												<ul>
													<li class="box-s transition">关注</li>
													<li class="box-s transition">购物车</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="xia clearfix box-s">
										<p class="bt over">
												${pr.name}
										</p>
										<div class="price clearfix">
											<span class="fl">￥${pr.current}<samp>原价￥${pr.original}</samp></span>
											<a href="${ctx}/ProductServlet?pid=${pr.id}&ty=commodit" class="goumai fr ra3 transition">立即购买</a>
										</div>
									</div>

							</div>
						</c:forEach>


						</div>
					</div>
					<div class="page clearfix ta-right">
						<a href="#" class="pre box-s">上一页</a>
						<a href="#">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<span>...</span>
						<a href="#" class="next box-s">下一页</a>
						<span class="ml10">到第</span>
						<input type="" name="" id="" value="" />
						<span>页</span>
						<input type="submit" name="" id="" value="确定" />
					</div>
				</div>
			</div>
			<!--sales end-->
		</div>
		<!--mall end-->
		

	<c:import url="${ctx}/atrs/communal/footer.jsp"/>
	</body>
	<script src="${ctx}/atrs/statics/js/other.js" type="text/javascript" ></script>
</html>