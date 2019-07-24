<%--
  Created by IntelliJ IDEA.
  User: xmx
  Date: 2019/7/17
  Time: 8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer</title>
</head>
<body>
<header></header>
<nav><jsp:include page="../common/nav.jsp"/></nav>
<main>
    <fieldset>
    <form action="${pageContext.request.contextPath}/customer/addOrUpdate.do" method="post">
        <input type="hidden" value="${data.cusid}" name="cusid">
        客户名:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" autofocus placeholder="客户名" name="cname" value="${data.cname}" ><br>
        客户地址:<input type="text" autofocus placeholder="客户地址" name="caddr" value="${data.caddr}" ><br>
        <input type="submit" value="修改">
    </form>
    </fieldset>
</main>
<footer></footer>
</body>
</html>
