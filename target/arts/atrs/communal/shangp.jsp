<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/14
  Time: 17:34
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
</body>
</html>
