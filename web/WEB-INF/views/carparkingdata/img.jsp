<%--
  Created by IntelliJ IDEA.
  User: xmx
  Date: 2019/7/14
  Time: 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%--
  Created by IntelliJ IDEA.
  User: xmx
  Date: 2019/7/11
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="../../../js/jquery-1.11.3.min.js" type="text/javascript"></script>
<html>
<head>
    <title>Carparking</title>
    <meta http-equiv="refresh" content="10">
    <link rel="stylesheet" href="/css/parkingList.css">
    <script type="text/javascript">
        function judgePicture(status){
            if (status==1){
                return "${pageContext.request.contextPath}/img/195939.jpg";
            }else {
                return "${pageContext.request.contextPath}/img/12.png";
            }
        }
    </script>
    <style>

    </style>
</head>
<body>
<div class="header"></div>
<div class="nav"><jsp:include page="../common/nav.jsp"></jsp:include></div>
<div class="main" id="carlist" align="center">
    <%--  <div id="carparking">--%>

    <%--  </div>--%>
</div>
<div class="footer"></div>

<script type="application/javascript">
    $.ajax({
        type : 'post',
        url :"${pageContext.request.contextPath}/carparkingdata/img.do",
        dataType:"json",
        success : function(json){
            for (var js = 0; js < json.length; js++) {
                var node;
                if(js%4==0){
                    node=node+"<div id=\"carparking\">"
                }
                var r=json[js];
                console.log(r);
                var picture=judgePicture(r.cwstatu);
                console.log(picture);
                var node="<div class=item>" +
                    "<a><img src="+picture+" width=192px heigh=108px></a>" +
                    "<div align='center'>devid:"+r.devid+"</div></div>";
                if(js%4==3){
                    node=node+"</div>";
                }
                $(carlist).append(node);

                //           "devid="+r.devid+";devGroupId="+r.devGroupId+";接收时间="+r.recTime+";状态改变时间="
                //           +r.ztChangeTime+";车辆ID="+r.carid+";车位状态="+r.cwstatu+";停车场ID="
                //           +r.carparkId+";经度/Y纵坐标="+r.cX+";纬度/X横="+r.cY;
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            // 状态码
            console.log(XMLHttpRequest.status);
            // 状态
            console.log(XMLHttpRequest.readyState);
            // 错误信息
            console.log(textStatus);
        }
    });
    // $.ajax({
    //   url: 'OperaServlet',
    //   data: "method=getInf&"+jsondata,
    //   dataType: 'json',
    // })findParkingInfoByOwner

</script>
</body>
</html>

