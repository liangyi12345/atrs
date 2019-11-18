<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <script src="../statics/js/jquery-1.8.3.min.js"></script>
    <script src="../statics/js/jquery.SuperSlide.2.1.js"></script>
    <link rel="stylesheet" href="../statics/css/page.css">
    <link rel="stylesheet" href="../statics/css/base.css">
    <style>
        body{
            background-image: url(../statics/img/signbg.jpg);
        }
    </style>
</head>

<body>
<form name="registerFrm" id="registerFrm" action="${ctx}/login" method="post">
<div class="sign clearfix">
    <div class="top clearfix">
        <a href="${ctx}/atrs/pre/index.jsp" class="fl fanhui">返回首页</a>
        <p class="fr">
            还没有商城账号？
            <a href="${ctx}/atrs/pre/register.jsp" class="zhuce ra3">
                注册
            </a>
        </p>
    </div>
    <div class="bottom clearfix box-s ra10">
        <div class="sign-logo clearfix">
            <img src="../statics/img/yuanlogo.png" height="150" width="150"/>
        </div>
        <div class="content clearfix">
            <ul>
                <li>
                    <span class="fl"></span>
                    <input type="text" name="username" value="" placeholder="用户名/手机号码" class="fl shuru">
                </li>
                <li>
                    <span class="fl mima"></span>
                    <input type="password" name="password" id="" value="" placeholder="密码" class="fl shuru">
                </li>
                <li class="jizhu">
                    <div class="radiothree fl">
                        <label>
                            <input type="checkbox" name="" value="">
                            <div class="option"></div>
                            <p class="opt-text fl ml20">记住密码</p>
                        </label>
                    </div>
                    <a href="#" class="wjmima fr">
                        忘记密码？
                    </a>
                </li>
            </ul>
            <%--<a href="" class="sign-btn ra5">立即登录</a>--%>
            <button type="submit" class="sign-btn ra5">立即登录</button>
        </div>
    </div>
    <div class="xia clearfix">
        <p>Copyright © 2003-2019 椿龄文化(chunlingwenhua). All Rights Reserved.</p>
    </div>
</div>
</form>
</body>
</html>