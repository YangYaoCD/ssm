<%--
  Created by IntelliJ IDEA.
  User: xmx
  Date: 2019/7/14
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Carparking</title>
</head>
<body>
<nav><jsp:include page="../common/nav.jsp"></jsp:include></nav>
<main>
    <fieldset>
    <form action="${pageContext.request.contextPath}/carparkingdata/saveOrUpdate.do" method="post">

        <input type="hidden" name="devid" value="${data.devid}">
        接收时间:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="rec" value="${data.recTime}"><br>
        状态改变时间:<input type="text" name="zt" value="${data.ztChangeTime}"><br>
        devGroupId:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${data.devGroupId}" name="devGroupId" required><br>
        车辆ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${data.carid}" name="carid"><br>
        车位状态:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${data.cwstatu}" name="cwstatu"><br>
        停车场ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${data.carparkId}" name="carparkId"><br>
        纬度/X横坐标:&nbsp;<input type="text" value="${data.c_X}" name="c_X"><br>
        经度/Y纵坐标:&nbsp;<input type="text" value="${data.c_Y}" name="c_Y"><br>
        备注:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="${data.memo}" name="memo"><br>
        <input type="submit" value="提交">
    </form>
    </fieldset>
</main>
</body>
</html>
