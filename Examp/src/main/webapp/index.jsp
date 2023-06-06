<%@ page import="com.example.examp.entity.EmployeeEntity" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.examp.dao.EmployeeDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>List</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>

<h1>List Employee</h1>
<br>
<h3><a href="/create">create</a></h3>
<div class="container">
  <table class="table table-striped">
    <thead>
    <tr>
      <th>Full Name</th>
      <th>Birthday</th>
      <th>Address</th>
      <th>Position</th>
      <th>Department</th>
    </tr>
    </thead>
    <tbody>
    <%
      EmployeeDao employeeDao = new EmployeeDao();
      List<EmployeeEntity> employeeList;
      employeeList = employeeDao.getAllEmployees();

      for (EmployeeEntity employee : employeeList) { %>
    <tr>
      <td><%=employee.getFullName()%></td>
      <td><%=employee.getBirthday()%></td>
      <td><%=employee.getAddress()%></td>
      <td><%=employee.getPosition()%></td>
      <td><%=employee.getDepartment()%></td>

    </tr>
    <% } %>
    </tbody>
  </table>
</div>
</body>
</html>
