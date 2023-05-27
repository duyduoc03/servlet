<%@ page import="com.example.jpademo.entity.UserEntity" %>
<%@ page import="com.example.jpademo.dao.UserDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<%
    UserDao userDao = new UserDao();
    String idStr = request.getParameter("id");
    if (idStr != null) {
        int id = Integer.parseInt(idStr);
        UserEntity user = userDao.getUserById(id);
%>
<h1>Edit User:</h1>
<form method="post" action="../update">
    <input type="hidden" name="id" value="<%=user.getId()%>">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="<%=user.getName()%>">
    <br><br>
    <label for="age">Age:</label>
    <input type="text" id="age" name="age" value="<%=user.getAge()%>">
    <br><br>
    <label for="address">Address:</label>
    <input type="text" id="address" name="address" value="<%=user.getAddress()%>">
    <br><br>
    <button type="submit">Update</button>
</form>
<%
    } else {
        out.println("User not found.");
    }
%>
</body>
</html>