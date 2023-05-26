<%--
  Created by IntelliJ IDEA.
  User: Duoc
  Date: 5/23/2023
  Time: 7:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>error page</title>
</head>
<body>
  <h1>Hệ thống đanh có lỗi.</h1>
  <h3><%= exception %></h3>
  <a href="/">back to home</a>
</body>
</html>
