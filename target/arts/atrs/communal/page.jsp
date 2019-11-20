<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/17
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="bottom clearfix">
<input id="currentPage" type="hidden" value="${paging.currentPage}">
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
                <span class="fl">￥${list.current}<samp>原价￥${list.original}</samp></span>
                <a href="${ctx}/ProductServlet?pid=${list.id}&ty=commodit" class="goumai fr ra3 transition">立即购买</a>
            </div>
        </div>
    </div>
</c:forEach>
</div>
<div class="page clearfix ta-right">
    <c:if test="${paging.currentPage>0}">
    <a onclick="shang()" class="pre box-s">上一页</a>
    </c:if>
    <c:forEach var="i" begin="1" end="${paging.pageCount}" >
        <a onclick="tiao1(${i})">${i}</a>
    </c:forEach>
    <c:if test="${paging.currentPage<paging.pageCount}">
    <a onclick="xia()" class="next box-s">下一页</a>
    </c:if>

    <span class="ml10">到第</span>
    <input type="text"  id="tiao" value="" />
    <span>页</span>
    <input type="submit" name="" id="" value="确定" onclick="tiao(${paging.pageCount})" />
</body>
</html>
