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
    <title>ParkinginfoList</title>
</head>
<body>
<nav><jsp:include page="../common/nav.jsp"></jsp:include></nav>
<main>

<table border="1">
    <tr>
        <th>停车场ID</th>
        <th>停车场中心横坐标</th>
        <th>停车场中心纵坐标</th>
        <th>停车场宽度</th>
        <th>停车场长度</th>
        <th>备注</th>
        <th>停车场建立时间</th>
        <th>停车场地址信息</th>
        <th>停车场所属者</th>
        <td align="center"><a href="${pageContext.request.contextPath}/rest/parkinginfo/toAdd">增加</a> </td>
    </tr>
    <c:forEach items="${list}" var="page">
        <tr>
            <td>${page.carparkId}</td>
            <td>${page.p_X}</td>
            <td>${page.p_Y}</td>
            <td>${page.pwidth}
            <td>${page.pheight}</td>
            <td>${page.memo}</td>
            <td>${page.time}</td>
            <td>${page.paddr}</td>
            <td>${page.owner}</td>
            <td><a href="${pageContext.request.contextPath}/rest/parkinginfo/toModify?carparkId=${page.carparkId}">编辑</a>
                &nbsp;&nbsp;<a href="${pageContext.request.contextPath}/rest/parkinginfo/delete?carparkId=${page.carparkId}">删除</a></td>
        </tr>
    </c:forEach>
</table>

</main>
</body>
</html>
