<%--
  Created by IntelliJ IDEA.
  User: xmx
  Date: 2019/7/17
  Time: 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        ul
        {
            list-style-type:none;
            margin:0;
            padding:0;
            overflow: hidden;
        }
        ul>li
        {
            float:left;
        }
        ul>li>a:link,ul>li>a:visited
        {
            display:block;
            width:250px;
            font-weight:bold;
            color:#FFFFFF;
            background-color: #9ebea8;
            text-align:center;
            padding:4px;
            text-decoration:none;
            text-transform:uppercase;
        }
        ul>li>a:hover,a:active
        {
            background-color:mediumvioletred;
        }
        nav_relative{
            top:20px;
        }
        main{
            text-align: center;
            margin-top: 20px;
        }
        table{
            width: 1290px;
        }
        tr>td{
            text-align: center;
        }
        body{
            background-image: url("../../../img/321184.jpg");
            background-size: cover;
            background-attachment: fixed;
            background-repeat: no-repeat;
            /*backdrop-filter: opacity(10%);*/
        }
    </style>
    <script>
        window.onload=function (ev) {
            var pathName = window.document.location.pathname;
            if (pathName=="/"){
                document.getElementById("l3").style.color='black';
            }else {
                var path=pathName.split("/");
                choose(path[1],path[2])
            }
        }
        function choose(info,info2) {
            if (info=="carparkdata") {
                document.getElementById("l1").style.color='black';
            }else if (info=="carparkingdata"){
                if (info2=="list.do"){
                    document.getElementById("l2").style.color='black';
                } else if (info2=="toImg.do") {
                    document.getElementById("l3").style.color='black';
                }
            }else if (info=="parkinginfo"){
                document.getElementById("l4").style.color='black';
            }else if (info=="customer"){
                document.getElementById("l5").style.color='black';
            }
        }
    </script>
</head>
<body>
<ul>
    <li><a href="${pageContext.request.contextPath}/carparkdata/list.do" id="l1">停车场车位信息表</a></li>
    <li><a href="${pageContext.request.contextPath}/carparkingdata/list.do" id="l2">停车场车位状态表</a></li>
    <li><a href="${pageContext.request.contextPath}/carparkingdata/toImg.do" id="l3">停车场车位状态图</a></li>
    <li><a href="${pageContext.request.contextPath}/parkinginfo/list.do" id="l4">停车场信息</a></li>
    <li><a href="${pageContext.request.contextPath}/customer/list.do" id="l5">用户信息表</a></li>
</ul>
</body>
</html>
