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
		<title>详情</title>
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
	</head>

<body>
<c:import url="${ctx}/atrs/communal/header.jsp"/>
		<!--navbar star-->
		<div class="navbar clearfix">
			<div class="content clearfix">
				<ul>
					<li class="cur"><a href="${ctx}/atrs/pre/index.jsp">首页</a></li>
					<li><a href="${ctx}/sessionServlet?ty=session">专场</a></li>
					<li ><a href="${ctx}/ProductServlet?ty=pro">商城</a></li>
					<li><a href="${ctx}/ArtistServlet?ty=ar">艺术家</a></li>
				</ul>
			</div>
		</div>
		<!--navbar end-->
		<!--Main-wrap-->
		<div class="main-wrap graybgtwo pt40 pb40">
			<div class="wrapper">
				<!--Main-pro-info-->
				<div class="main-pro-info white-box  clearfix">
					<div class="fangda clearfix fl">
						<div id="showbox">
						  <img src="${ctx}/atrs/statics/files/zuopin/${pr.imagePath}" width="1000" height="1000" />

						</div><!--展示图片盒子-->
						<div id="showsum"></div><!--展示图片里边-->
						<p class="showpage">
						  <a href="javascript:void(0);" id="showlast"> < </a>
						  <a href="javascript:void(0);" id="shownext"> > </a>
						</p>
						
						</div>
					<!--产品信息介绍-->
					<div class="fr pro-intro">
						<div class="pb20 line-bot">
							<h3 class="fs26 darkblack lh50 ellipsis">${pr.name}</h3>
							<p class="fs14 lh20 over2">${pr.introduction}</p>
							<p class="price pt10 clearfix"><strong class="fl red fs40">¥${pr.current}</strong><em class="fl white ml20 lh20 mt20">已售：2000件</em></p>
						</div>
						<div class="pro-ctent clearfix">
							<ul>
								<li><span>艺 术 家 ：</span>${pr.artist.name}</li>
								<li><span>尺      寸 ：</span>${pr.size}cm</li>
								<li><span>价      格 ：</span>${pr.original}</li>
								<li><span>材      质 ：</span>${pr.texture}</li>
								<li><span>年      代 ：</span>${pr.byTheTime}</li>
							</ul>
						</div>
						<div class="pt10">
							<div class="p-count fs14 mt20 clearfix">
								<label class="fl lh40 darkblack">数量：</label>
								<p class="fl count ml10 clearfix">
									<a href="javascript:" class="fl fs30 reduction">-</a>
									<input type="text" value="" class="fl fs16" placeholder="1">
									<a href="javascript:" class="fl fs30 add">+</a>
								</p>
							</div>
							<div class="but-box mt30">
								<input type="button" class="fl orange-but radius3" onclick="window.location.href='jiesuan.html'" value="立即购买">
								<input type="button" class="fl ml20 orange-but gray-but radius3" value="加入购物车">
							</div>
						</div>
					</div>
					<!--/end-->
				</div>
				<!--/end-->
				<!--proscroll-->
				<div class="proscroll white-box mt20">
					<a class="prev" href="javascript:void(0)"></a>
					<div class="scrollWrap">
						<ul class="prolist clearfix">
							<c:forEach var="pr" items="${list}">
								<li>
									<a href="${ctx}/ProductServlet?pid=${pr.id}&ty=commodit" class="db pic"><span ><img src="${ctx}/atrs/statics/files/zuopin/${pr.imagePath}" alt=""/></span></a>
									<a href="${ctx}/ProductServlet?pid=${pr.id}&ty=commodit" class="full-db tit darkblack ellipsis">${pr.name}</a>
									<strong class="full-db red"><em class="fs12">¥</em>${pr.current}</strong>
								</li>
							</c:forEach>


						</ul>

					</div>
					<a class="next" href="javascript:void(0)"></a>
				</div>
				<!--/end-->

				<div class="mt20 clearfix">
					<div class="fl pro-likes white-box">
						<div class="title"><strong class="fs16 white">大家都喜欢</strong></div>
						<ul class="likelist">
							<c:forEach var="pr" items="${list}" begin="15" end="18">
								<li>
									<a href="${ctx}/ProductServlet?pid=${pr.id}&ty=commodit" class="db pic"><span><img src="${ctx}/atrs/statics/files/zuopin/${pr.imagePath}" alt=""/></span></a>
									<a href="${ctx}/ProductServlet?pid=${pr.id}&ty=commodit" class="full-db tit darkblack ellipsis">${pr.name}</a>
									<strong class="full-db red"><em class="fs12">¥</em>${pr.current}</strong>
								</li>
							</c:forEach>
						</ul>
					</div>
					
					<div class="pro-detail fr box-s">
						<div class="tab-hd box-s">
								<ul class="tab-nav clearfix">
								  <li class="fs16 box-s">商品详情</li>
								  <li class="fs16 box-s">商品咨询</li>
								</ul>
						</div>
						<div class="tab-bd">
							<div class="tab-pal" style="size: A3">
								&nbsp;&nbsp;&nbsp;&nbsp;${pr.details}
							</div>
							<div class="tab-pal">
								<div class="pro-zixun clearfix">
									<p class="bt">我要咨询：</p>
									<textarea name="" rows="5" cols="" placeholder="请输入要咨询内容"></textarea>
									<p class="tijiao"><a href="#" class="ra3">提交</a></p>
								</div>
							</div>
						</div>
					</div>

				</div>

			</div>

		</div>
		<!--/end-->

<c:import url="${ctx}/atrs/communal/footer.jsp"/>
	</body>
	<script src="${ctx}/atrs/statics/js/other.js" type="text/javascript" ></script>
</html>