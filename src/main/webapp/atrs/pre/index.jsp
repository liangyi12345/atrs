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
		<title>首页</title>
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
	<div class="navbar clearfix">
		<div class="content clearfix">
			<ul>
				<li class="cur">
					<a href="${ctx}/atrs/pre/index.jsp">首页</a>
				</li>
				<li >
					<a href="${ctx}/sessionServlet?ty=session">专场</a>
				</li>
				<li>
					<a href="${ctx}/atrs/pre/mall.jsp">商城</a>
				</li>
				<li>
					<a href="${ctx}/ArtistServlet?ty=ar">艺术家</a>
				</li>
			</ul>
		</div>
	</div>
		<!--navbar end-->
		
		<!--banner star-->
		<div class="banner">		
			<div class="bd">
				<ul>
					<li style="background:url(${ctx}/atrs/statics/upload/banner.jpg) #194982 center 0 no-repeat;"><a href="#"></a></li>
					<li style="background:url(${ctx}/atrs/statics/upload/banner.jpg) #15181e center 0 no-repeat;"><a href="#"></a></li>
					<li style="background:url(${ctx}/atrs/statics/upload/banner.jpg) #0b0b0b center 0 no-repeat;"><a href="#"></a></li>
					<li style="background:url(${ctx}/atrs/statics/upload/banner.jpg) #000000 center 0 no-repeat;"><a href="#"></a></li>
					<li style="background:url(${ctx}/atrs/statics/upload/banner.jpg) #04304b center 0 no-repeat;"><a href="#"></a></li>
				</ul>
			</div>
			<div class="hd"><ul></ul></div>
		</div>
		<!--banner end-->
		
		<!--recom star-->
		<div class="recom clearfix">
			<div class="content clearfix">
				<div class="recom-tit clearfix">
					<p class="engtit ta-center">
						RECOMMENDS
					</p>
					<div class="middle clearfix">
						<span class="line"></span>
						<span class="wenzi">今日推荐</span>
						<span class="line"></span>
					</div>
					<p class="fu-tit">
						好作品无需多说 你会由心的看清它的诉说
					</p>
				</div>
				<div class="bottom clearfix box-s">
					<div class="left clearfix fl">
						<div class="listone clearfix fl">
							<a href="#">
								<!--备注：第一张图 宽度：418像素，高度：710像素-->
								<div class="tu clearfix">
									<img src="${ctx}/atrs/statics/upload/1-1.png"/>
									<span></span>
								</div>
								<div class="listxia clearfix ta-center">
									<h2>
										<p>
											孙瑾晨
											<span>00.<samp>00</samp></span>
										</p>
									</h2>
								</div>
							</a>
						</div>
						<div class="listone listtwo clearfix fl">
							<a href="#">
								<!--备注：第二张图 宽度：438像素，高度：376像素-->
								<div class="tu clearfix">
									<img src="${ctx}/atrs/statics/upload/1-3.png"/>
									<span></span>
								</div>
								<div class="listxia clearfix ta-center">
									<h2>
										<p>
											孙瑾晨
											<span>00.<samp>00</samp></span>
										</p>
									</h2>
								</div>
							</a>
						</div>
					</div>
					<div class="right clearfix fr">
						<div class="listone listthree clearfix fl">
							<a href="#">
								<!--备注：第三张图 宽度：530像素，高度：638像素-->
								<div class="tu clearfix">
									<img src="${ctx}/atrs/statics/upload/1-2.png"/>
									<span></span>
								</div>
								<div class="listxia clearfix ta-center">
									<h2>
										<p>
											孙瑾晨
											<span>00.<samp>00</samp></span>
										</p>
									</h2>
								</div>
							</a>
						</div>
						
						<div class="listone listfour clearfix fr">
							<a href="#">
								<!--备注：第四张图 宽度：438像素，高度：480像素-->
								<div class="tu clearfix">
									<img src="${ctx}/atrs/statics/upload/1-4.png"/>
									<span></span>
								</div>
								<div class="listxia clearfix ta-center">
									<h2>
										<p>
											孙瑾晨
											<span>00.<samp>00</samp></span>
										</p>
									</h2>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--recom end-->
		
		<!--choice star-->
		<div class="choice clearfix">
			<div class="bgdian"></div>
			<div class="recom-tit clearfix">
				<p class="engtit ta-center">
					SHOPPING MALL
				</p>
				<div class="middle clearfix">
					<span class="line"></span>
					<span class="wenzi">商城精选</span>
					<span class="line"></span>
				</div>
				<p class="fu-tit">
					画品丰富多类 抽象 印象 自然 城市皆有
				</p>
			</div>
			<div class="content clearfix box-s">
				<a href="#" class="choice-more">MORE+</a>
				<div class="list clearfix transition">
					<div class="tu clearfix">
						<img src="${ctx}/atrs/statics/upload/1.jpg"/>
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
							尹毅画作
						</p>
						<div class="price clearfix">
							<span class="fl">￥00.00</span>
							<a href="pro_detail.html" class="goumai fr ra3 transition">立即购买</a>
						</div>
					</div>
				</div>
				<div class="list clearfix transition">
					<div class="tu clearfix">
						<img src="${ctx}/atrs/statics/upload/1.jpg"/>
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
							尹毅画作
						</p>
						<div class="price clearfix">
							<span class="fl">￥00.00</span>
							<a href="pro_detail.html" class="goumai fr ra3 transition">立即购买</a>
						</div>
					</div>
				</div>
				<div class="list clearfix transition">
					<div class="tu clearfix">
						<img src="${ctx}/atrs/statics/upload/1.jpg"/>
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
							尹毅画作
						</p>
						<div class="price clearfix">
							<span class="fl">￥00.00</span>
							<a href="pro_detail.html" class="goumai fr ra3 transition">立即购买</a>
						</div>
					</div>
				</div>
				<div class="list clearfix transition">
					<div class="tu clearfix">
						<img src="${ctx}/atrs/statics/upload/1.jpg"/>
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
							尹毅画作
						</p>
						<div class="price clearfix">
							<span class="fl">￥00.00</span>
							<a href="pro_detail.html" class="goumai fr ra3 transition">立即购买</a>
						</div>
					</div>
				</div>
				<div class="list clearfix transition">
					<div class="tu clearfix">
						<img src="${ctx}/atrs/statics/upload/1.jpg"/>
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
							尹毅画作
						</p>
						<div class="price clearfix">
							<span class="fl">￥00.00</span>
							<a href="pro_detail.html" class="goumai fr ra3 transition">立即购买</a>
						</div>
					</div>
				</div>
				<div class="list clearfix transition">
					<div class="tu clearfix">
						<img src="${ctx}/atrs/statics/upload/1.jpg"/>
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
							尹毅画作
						</p>
						<div class="price clearfix">
							<span class="fl">￥00.00</span>
							<a href="pro_detail.html" class="goumai fr ra3 transition">立即购买</a>
						</div>
					</div>
				</div>
				<div class="list clearfix transition">
					<div class="tu clearfix">
						<img src="${ctx}/atrs/statics/upload/1.jpg"/>
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
							尹毅画作
						</p>
						<div class="price clearfix">
							<span class="fl">￥00.00</span>
							<a href="pro_detail.html" class="goumai fr ra3 transition">立即购买</a>
						</div>
					</div>
				</div>
				<div class="list clearfix transition">
					<div class="tu clearfix">
						<img src="${ctx}/atrs/statics/upload/1.jpg"/>
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
							尹毅画作
						</p>
						<div class="price clearfix">
							<span class="fl">￥00.00</span>
							<a href="pro_detail.html" class="goumai fr ra3 transition">立即购买</a>
						</div>
					</div>
				</div>
				<div class="list clearfix transition">
					<div class="tu clearfix">
						<img src="${ctx}/atrs/statics/upload/1.jpg"/>
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
							尹毅画作
						</p>
						<div class="price clearfix">
							<span class="fl">￥00.00</span>
							<a href="pro_detail.html" class="goumai fr ra3 transition">立即购买</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--choice end-->
		
		<!--art star-->
		<div class="art clearfix">
			<div class="content clearfix box-s">
				<div class="art-ctent clearfix box-s">
					<div class="recom-tit clearfix">
						<p class="engtit ta-center">
							ART WRITER
						</p>
						<div class="middle clearfix">
							<span class="line"></span>
							<span class="wenzi">艺术家</span>
							<span class="line"></span>
						</div>
					</div>
					<div class="bottom clearfix box-s">
						<div class="scrollBox" style="margin:0 auto">
							<div class="ohbox">
								<ul class="piclist">
									<li>
										<div class="list clearfix fl box-s transition">
											<div class="tu clearfix box-s">
												<img src="${ctx}/atrs/statics/upload/people.jpg"/>
												<span></span>
											</div>
											<div class="ctent clearfix box-s">
												<div class="shang clearfix">
													<p class="over ta-center">孙瑾晨</p>
													<span></span>
												</div>
												<div class="xia clearfix">
													<p>
														原名查君，生于西安，自幼受家庭熏陶，随父习画1986年入中
														原名查君，生于西安，自幼受家庭熏陶，随父习画。1986年入中
														原名查君，生于西安，自幼受家庭熏陶，随父习画。1986年入中......
														<a href="#" class="more">
															查看更多&gt;&gt;
														</a>
													</p>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="list clearfix fl box-s transition">
											<div class="tu clearfix box-s">
												<img src="${ctx}/atrs/statics/upload/people.jpg"/>
												<span></span>
											</div>
											<div class="ctent clearfix box-s">
												<div class="shang clearfix">
													<p class="over ta-center">孙瑾晨</p>
													<span></span>
												</div>
												<div class="xia clearfix">
													<p>
														原名查君，生于西安，自幼受家庭熏陶，随父习画1986年入中
														原名查君，生于西安，自幼受家庭熏陶，随父习画。1986年入中
														原名查君，生于西安，自幼受家庭熏陶，随父习画。1986年入中......
														<a href="#" class="more">
															查看更多&gt;&gt;
														</a>
													</p>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="list clearfix fl box-s transition">
											<div class="tu clearfix box-s">
												<img src="${ctx}/atrs/statics/upload/people.jpg"/>
												<span></span>
											</div>
											<div class="ctent clearfix box-s">
												<div class="shang clearfix">
													<p class="over ta-center">孙瑾晨</p>
													<span></span>
												</div>
												<div class="xia clearfix">
													<p>
														原名查君，生于西安，自幼受家庭熏陶，随父习画1986年入中
														原名查君，生于西安，自幼受家庭熏陶，随父习画。1986年入中
														原名查君，生于西安，自幼受家庭熏陶，随父习画。1986年入中......
														<a href="#" class="more">
															查看更多&gt;&gt;
														</a>
													</p>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="list clearfix fl box-s transition">
											<div class="tu clearfix box-s">
												<img src="${ctx}/atrs/statics/upload/people.jpg"/>
												<span></span>
											</div>
											<div class="ctent clearfix box-s">
												<div class="shang clearfix">
													<p class="over ta-center">孙瑾晨</p>
													<span></span>
												</div>
												<div class="xia clearfix">
													<p>
														原名查君，生于西安，自幼受家庭熏陶，随父习画1986年入中
														原名查君，生于西安，自幼受家庭熏陶，随父习画。1986年入中
														原名查君，生于西安，自幼受家庭熏陶，随父习画。1986年入中......
														<a href="#" class="more">
															查看更多&gt;&gt;
														</a>
													</p>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="pageBtn">
								<span class="prev">&lt;</span>
								<span class="next">&gt;</span>
								<ul class="list"><li>0</li><li>1</li></ul>
							</div>
						</div>
					</div>		
					
				</div>
			</div>
		</div>
		<!--art end-->
	<c:import url="${ctx}/atrs/communal/footer.jsp"/>
		<!--footer end-->
	</body>
	<script src="${ctx}/atrs/statics/js/other.js" type="text/javascript" ></script>
</html>
