<%--
  Created by IntelliJ IDEA.
  User: zsy
  Date: 15/3/14
  Time: 下午1:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title></title>
</head>
<body>
Hello
<%@ include file="commons/header.jsp" %>

</body>
</html>
