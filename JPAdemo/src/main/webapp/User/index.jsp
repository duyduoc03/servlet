<%@ page import="com.example.jpademo.entity.UserEntity" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.jpademo.dao.UserDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<%
    UserDao userDao = new UserDao();
    List<UserEntity> userList;

    String name = request.getParameter("name");
    if (name != null) {
        userList = userDao.searchUsersByName(name);
    } else {
        userList = userDao.getAllUsers();
    }
%>
<h1>Danh sách người dùng:</h1>
<br>
<h3><a href="create.jsp">create</a></h3>
<div class="container">
    <form method="get" action="">
        <label for="name">Tên:</label>
        <input type="text" id="name" name="name">
        <button type="submit">Tìm kiếm</button>
    </form>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Address</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <% for (UserEntity user : userList) { %>
        <tr>
            <td><%=user.getName() != null ? user.getName() : "" %></td>
            <td><%=user.getAge()%></td>
            <td><%=user.getAddress()%></td>
            <td>
                <a href="edit.jsp?id=<%=user.getId()%>">Edit</a>
                <a href="/delete?id=<%=user.getId()%>">Delete</a>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>
