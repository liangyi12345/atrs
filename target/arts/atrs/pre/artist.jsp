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
		<title>艺术家</title>
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
            <script type="text/javascript" src="${ctx}/atrs/statics/js/art/art.js"></script>
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
						您的位置：艺术家
					</div>

					<div class="listed clearfix box-s">
						<div class="list clearfix fl">
							<p class="bt fl">
								分类：
							</p>
							<div class="right clearfix fl">
								<ul>
									<li class="cur"onclick="fenlei()" value="0">全部</li>
									<li class="" id="shuhau" value="1" onclick="fenlei1()">书画</li>
									<li class="" id="youhua" value="2" onclick="fenlei2()">油画</li>
									<li class="" id="banhua" value="3" onclick="fenlei3()">版画</li>
									<li class="" id="diaoxaing" value="4" onclick="fenlei4()">雕塑</li>
								</ul>
								<a href="settled.jsp" class="shenqin fr">申请签约入驻</a>
							</div>
						</div>
						<div class="ywlist clearfix fl" id="float">
							<div class="ywctent clearfix">
								<ul class="clearfix">
									<li class="cur">A</li>
									<li>B</li>
									<li>C</li>
									<li>D</li>
									<li>E</li>
									<li>F</li>
									<li>G</li>
									<li>H</li>
									<li>I</li>
									<li>J</li>
									<li>K</li>
									<li>L</li>
									<li>M</li>
									<li>N</li>
									<li>O</li>
									<li>P</li>
									<li>Q</li>
									<li>R</li>
									<li>S</li>
									<li>T</li>
									<li>U</li>
									<li>V</li>
									<li>W</li>
									<li>X</li>
									<li>Y</li>
									<li class="last">Z</li>
								</ul>
							</div>							
						</div>
					</div>
				</div>
			</div>
			<!--sorts end-->
			
			<!--artist star-->

			<div class="artist clearfix">
				<div class="content clearfix">
					<div class="artist-top clearfix">
						<span>全部艺术家</span>
					</div>

                    <script>
                           load();
                    </script>
                    <div id="art">

                    </div>
<%--
					<c:forEach var="alist" items="${amap}" >
					<div class="artist-bottom clearfix">
						<div class="list clearfix fl">
							<div class="left clearfix fl box-s">
								<div class="tu clearfix">

									<img src="${ctx}/atrs/statics/files/touxiang/${alist.imagePath}"/>
									<span></span>

								</div>
							</div>
							<div class="right clearfix fl">
								<span class="tit">艺术家：${alist.name}</span>
								<div class="bottom clearfix box-s fl over4">
									${alist.synopsis}
								</div>
							</div>

							<a href="${ctx}/ArtistServlet?id=${alist.id}&ty=adetail" class="ck-btn ra3 transition">
								查看详情>>
							</a>

						</div>

					</div>
					</c:forEach>--%>
				</div>
			</div>
			<!--artist end-->
		</div>
		<!--mall end-->

	<c:import url="${ctx}/atrs/communal/footer.jsp"/>
	<!--footer end-->
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