<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/22 0022
  Time: 14:50
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
<input id="currentPage" type="hidden" value="${paging.currentPage}">
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
</c:forEach>

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
