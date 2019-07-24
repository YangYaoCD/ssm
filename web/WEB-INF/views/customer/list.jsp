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
    <title>Customer</title>
</head>
<body>
<header></header>
<nav><jsp:include page="../common/nav.jsp"/></nav>
<main>
<table border="1">
    <tr>
        <th></th>
        <th>客户名</th>
        <th>客户地址</th>
        <td align="center"><a href="${pageContext.request.contextPath}/rest/customer/toAdd">增加</a> </td>
    </tr>
    <c:forEach items="${list}" var="page">
        <tr>
            <td>${page.cusid}</td>
            <td>${page.cname}</td>
            <td>${page.caddr}</td>
            <td><a href="${pageContext.request.contextPath}/rest/customer/toEdit?cusid=${page.cusid}">编辑</a>
                &nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/rest/customer/delete?cusid=${page.cusid}">删除</a></td>
        </tr>
    </c:forEach>
</table>
</main>
<footer></footer>
</body>
</html>
