<%--
  Created by IntelliJ IDEA.
  User: xmx
  Date: 2019/7/15
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Carparking</title>
    <style type="text/css">
        fieldset{
            width: 600px;

        }
        main{
            margin: 80px 200px;
            text-align: center;
        }
    </style>
</head>
<body>
<nav><jsp:include page="../common/nav.jsp"></jsp:include></nav>
<main>
<form action="${pageContext.request.contextPath}/carparkingdata/saveOrUpdate.do" method="post">
    <fieldset>
    devid:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="devid" required><br>
    接收时间:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="rec" value="${rectime}" placeholder="接收时间"><br>
    状态改变时间:<input type="text" name="zt" value="${rectime}" placeholder="状态改变时间"><br>
    devGroupld:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="devGroupId" required><br>
    车辆ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="carid"><br>
    车位状态:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cwstatu" placeholder="1代表有车，0代表无车"><br>
    停车场ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="carparkId"><br>
    纬度/X横坐标:<input type="text" name="c_X"><br>
    经度/Y纵坐标:<input type="text" name="c_Y"><br>
    备注:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="memo"><br>
    <input type="submit" value="提交">
    </fieldset>
</form>
</main>
</body>
</html>
