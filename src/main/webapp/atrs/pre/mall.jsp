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
	<title>商城</title>
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
	<script type="text/javascript" src="${ctx}/atrs/statics/js/paging/page.js"></script>
	<script type="text/javascript" src="${ctx}/atrs/statics/js/product/product.js"></script>
</head>

<body>
<c:import url="${ctx}/atrs/communal/header.jsp"/>


<!--navbar star-->
<div class="navbar clearfix">
	<div class="content clearfix">
		<ul>
			<li><a href="${ctx}/atrs/pre/index.jsp">首页</a></li>
			<li><a href="${ctx}/sessionServlet?ty=session">专场</a></li>
			<li class="cur"><a href="${ctx}/atrs/pre/mall.jsp">商城</a></li>
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
				您的位置：商城
			</div>
			<div class="listed clearfix box-s">
				<div class="list clearfix fl">
					<p class="bt fl">
						分类：
					</p>
					<div class="right clearfix fl">
						<ul>
							<li class="cur"onclick="fenlei()" value="0">不限</li>
							<li class="" id="shuhua" onclick="fenlei1()" value="1">书画</li>
							<li class="" id="youhau" onclick="fenlei2()" value="2">油画</li>
							<li class="" id="banhua" onclick="fenlei3()" value="3">版画</li>
							<li class="" id="diaoshu" onclick="fenlei4()" value="4">雕塑</li>
						</ul>
					</div>
				</div>
				<div class="list clearfix fl">
					<p class="bt fl">
						尺寸：
					</p>.
					<div class="right clearfix fl">
						<ul>
							<li class="cur" onclick="fenlei01()">不限</li>
							<li id="cicun1" onclick="fenlei5()" value="60">小于60cm</li>
							<li id="cicun2" onclick="fenlei6()" value="150">小于150cm</li>
							<li id="cicun3" onclick="fenlei7()" value="200">小于200cm</li>
						</ul>
					</div>
				</div>
				<div class="list clearfix fl">
					<p class="bt fl">
						价格：
					</p>
					<div class="right clearfix fl">
						<ul>
							<li class="cur" onclick="fenlei02()">不限</li>
							<li id="money1" value="10000" onclick="fenlei8()">小于10000元</li>
							<li id="money2" value="20000" onclick="fenlei9()">小于20000元</li>
							<li id="money3" value="30000" onclick="fenlei10()">30000元以上</li>
						</ul>
					</div>
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
						<li onclick="log()">综合排序</li>
						<li class="xliang cur" onclick="psort()">价格</li>
						<li class="xpin" onclick="nsort()">新品</li>
					</ul>
				</div>
			</div>


				<script type="text/javascript">
					load();
				</script>
				<div id="page">

				</div>


			</div>

		</div>

			</div>
		</div>



<c:import url="${ctx}/atrs/communal/footer.jsp"/>
</body>
<script type="text/javascript">
	$('.listed .list ul li').each(function() {
		$(this).click(function() {
			$(this).siblings("li").removeClass("cur");
			$(this).addClass("cur");
		});
	});
</script>
<script src="${ctx}/atrs/statics/js/other.js" type="text/javascript" ></script>
</html>