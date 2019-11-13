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
</head>

<body>
<!--header star-->
<div class="header clearfix">
	<div class="top clearfix">
		<div class="topctent clearfix">
			<div class="left clearfix fl">
				公告：您好，欢迎登录文化艺术品商城
			</div>
			<div class="right clearfix fr">
				<div class="zuo clearfix fl">
					<ul class="clearfix fl">
						<li>
							<span class="fl">您好，请</span>
							<a href="sign.html" class="fl">登录</a>
						</li>
						<li>
							<a href="register.html">
								免费注册
							</a>
						</li>
						<li>
							<a href="settled.html">
								艺术家入驻
							</a>
						</li>
					</ul>
				</div>
				<div class="shopcar-btn clearfix fl">
					<a href="shopping.html" class="box-s">
						购物车（0）
					</a>
				</div>
				<div class="fenxiang clearfix fl">
					<span class="fl">分享到：</span>
					<ul class="clearfix fl">
						<li><a href="#"><img src="${ctx}/atrs/statics/img/sina.png"/></a></li>
						<li><a href="#"><img src="${ctx}/atrs/statics/img/qq.png"/></a></li>
						<li><a href="#"><img src="${ctx}/atrs/statics/img/wechat.png"/></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="bottom clearfix">
		<div class="logo clearfix">
			<a href="index.html"></a>
		</div>
		<div class="search clearfix fr ra5">
			<input type="text" class="fl" name="" id="" value="" placeholder="请输入您要搜索的内容" />
			<input type="button" name="" id="" value="搜索" class="fl box-s" />
		</div>
	</div>
</div>
<!--header end-->

<!--navbar star-->
<div class="navbar clearfix">
	<div class="content clearfix">
		<ul>
			<li><a href="${ctx}/atrs/pre/index.jsp">首页</a></li>
			<li><a href="${ctx}/sessionServlet?ty=session">专场</a></li>
			<li class="cur"><a href="${ctx}/ProductServlet">商城</a></li>
			<li><a href="artist.html">艺术家</a></li>
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
							<li class="cur">不限</li>
							<li class="">书画</li>
							<li class="">油画</li>
							<li class="">版画</li>
							<li class="">雕塑</li>
						</ul>
					</div>
				</div>
				<div class="list clearfix fl">
					<p class="bt fl">
						尺寸：
					</p>
					<div class="right clearfix fl">
						<ul>
							<li class="cur">不限</li>
							<li>小于50cm</li>
							<li>500-100cm</li>
							<li>大于150cm</li>
						</ul>
					</div>
				</div>
				<div class="list clearfix fl">
					<p class="bt fl">
						价格：
					</p>
					<div class="right clearfix fl">
						<ul>
							<li class="cur">不限</li>
							<li>0-1000元</li>
							<li>1000-2000元</li>
							<li>2000-3000元</li>
							<li>3000-5000元</li>
							<li>5000元以上</li>
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
						<li>综合排序</li>
						<li class="xliang cur">销量</li>
						<li class="xpin">新品</li>
					</ul>
				</div>
			</div>

			<div class="bottom clearfix">
				<c:forEach var="list" items="${list}" >
				<div class="list clearfix transition">
					<div class="tu clearfix">
						<a href="${ctx}/ProductServlet?pid=${list.id}&ty=commodit"><img src="${ctx}/atrs/statics/files/zuopin/${list.imagePath}"/></a>
						<span></span>

						<div class="ycang clearfix">
							<samp class="opa8"></samp>
							<div class="nr clearfix">
								<!--注意：当下方li中添加class名为cur的时候为选中的时候样式-->
								<ul>
									<li class="box-s transition">收藏</li>
									<li class="box-s transition">购物车</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="xia clearfix box-s">
						<p class="bt over">
								${list.name}
						</p>
						<div class="price clearfix">
							<span class="fl">￥${list.original}<samp>原价￥${list.current}</samp></span>
							<a href="${ctx}/ProductServlet?pid=${list.id}&ty=commodit" class="goumai fr ra3 transition">立即购买</a>
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

	<!--footer star-->
	<div class="footer clearfix">
		<div class="content clearfix">
			<div class="top clearfix">
				<div class="list clearfix fl box-s">
					<div class="part icon1 box-s">
						<h3>专业</h3>
						<p>拥有资深艺术顾问和先进交易平台，安全物流，快捷支付。</p>
					</div>
				</div>
				<div class="list clearfix fl box-s">
					<div class="part icon2 box-s">
						<h3>保真</h3>
						<p>阵容强大的艺术评鉴团，确保平台上的藏品货真价实。</p>
					</div>
				</div>
				<div class="list clearfix fl box-s">
					<div class="part icon3 box-s">
						<h3>保值</h3>
						<p>为您精选具备艺术价值的作品，助您的资产保值、增值。</p>
					</div>
				</div>
			</div>
			<div class="bottom clearfix">
				<div class="left clearfix fl">
					<div class="list clearfix">
						<div class="shang clearfix">
							<p>新手指南</p>
							<span></span>
						</div>
						<div class="xia clearfix">
							<ul>
								<li><a href="scgmlc.html">商城购买流程</a></li>
								<li><a href="cjwt.html">常见问题</a></li>
							</ul>
						</div>
					</div>
					<div class="list clearfix">
						<div class="shang clearfix">
							<p>账户管理</p>
							<span></span>
						</div>
						<div class="xia clearfix">
							<ul>
								<li><a href="zhcz.html">账户充值</a></li>
								<li><a href="zhtx.html">账户提现</a></li>
								<li><a href="zffs.html">支付方式</a></li>
							</ul>
						</div>
					</div>
					<div class="list clearfix">
						<div class="shang clearfix">
							<p>服务合作</p>
							<span></span>
						</div>
						<div class="xia clearfix">
							<ul>
								<li><a href="friend-link.html">友情链接</a></li>
								<li><a href="ysjrz.html">艺术家入驻</a></li>
							</ul>
						</div>
					</div>
					<div class="list clearfix">
						<div class="shang clearfix">
							<p>关于我们</p>
							<span></span>
						</div>
						<div class="xia clearfix">
							<ul>
								<li><a href="gsjj.html">公司简介</a></li>
								<li><a href="contact.html">联系我们</a></li>
								<li><a href="jrwm.html">加入我们</a></li>
							</ul>
						</div>
					</div>
					<div class="list clearfix">
						<div class="shang clearfix">
							<p>售后服务</p>
							<span></span>
						</div>
						<div class="xia clearfix">
							<ul>
								<li><a href="wlsm.html">物流说明</a></li>
								<li><a href="mzsm.html">免责声明</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="middle clearfix fl">
					<ul>
						<li><img src="${ctx}/atrs/statics/upload/ewm.jpg"/></li>
						<li><img src="${ctx}/atrs/statics/upload/ewm.jpg"/></li>
					</ul>
				</div>
				<div class="right clearfix fr">
					<p class="bt">免费咨询热线：</p>
					<p class="tel">400-000-0000</p>
					<p class="fu-bt">(周一到周五8:00-22:00)</p>
				</div>
			</div>
		</div>
		<div class="banquan clearfix ta-center">
			Copyright © 2003-2015 椿龄文化(chunlingwenhua). All Rights Reserved.
		</div>
	</div>
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