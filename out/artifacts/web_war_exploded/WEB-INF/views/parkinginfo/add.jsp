<%--
  Created by IntelliJ IDEA.
  User: xmx
  Date: 2019/7/16
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Parkinginfo</title>
</head>
<body>
<nav><jsp:include page="../common/nav.jsp"/></nav>
<main>
    <fieldset>
        <form action="${pageContext.request.contextPath}/parkinginfo/addOrModify.do" method="post">
            停车场ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="carparkId" autofocus required><br>
            停车场中心横坐标:<input type="text" name="p_X" ><br>
            停车场中心纵坐标:<input type="text" name="p_Y" ><br>
            停车场宽度:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="Pwidth" ><br>
            停车场长度:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="Pheight" ><br>
            备注:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="memo" ><br>
            停车场建立时间:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="tm"  value="${rectime}" required><br>
            停车场地址信息:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="paddr"  required><br>
            停车场所属者:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="owner" required><br>
            <input type="submit" value="提交">
        </form>
    </fieldset>
</main>
</body>
</html>
