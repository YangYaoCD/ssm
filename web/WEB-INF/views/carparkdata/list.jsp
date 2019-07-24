<%--
  Created by IntelliJ IDEA.
  User: xmx
  Date: 2019/7/13
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>CarparkdataList</title>

</head>
<body>
<header></header>
<nav><jsp:include page="../common/nav.jsp"></jsp:include></nav>
<main>
<table border="1">
    <tr>
        <th>devid</th>
        <th>devGroupId</th>
        <th>接收时间</th>
        <th>状态改变时间</th>
        <th>车辆ID</th>
        <th>车位状态</th>
        <th>停车场ID</th>
        <th>纬度/X横坐标</th>
        <th>经度/Y纵坐标</th>
        <th>备注</th>
    </tr>
    <c:forEach items="${list}" var="page">
        <tr>
            <td>${page.devid}</td>
            <td>${page.devGroupId}</td>
            <td>${page.recTime}</td>
            <td>${page.ztChangeTime}
            <td>${page.carid}</td>
            <td>${page.cwstatu}</td>
            <td>${page.carparkId}</td>
            <td>${page.c_X}</td>
            <td>${page.c_Y}</td>
            <td>${page.memo}</td>
        </tr>
    </c:forEach>
</table>
</main>
<footer></footer>
</body>
</html>
