<%@ page import="com.example.examp.entity.EmployeeEntity" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.examp.dao.EmployeeDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>List Employee</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
  <h1 class="text-center mb-5">List Employee</h1>
  <div class="row">
    <div class="col-md-6">
      <a href="/Create" class="btn btn-primary mb-3">Create Employee</a>
    </div>
  </div>
  <table class="table">
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
      List<EmployeeEntity> employeeList = employeeDao.getAllEmployees();
      for (EmployeeEntity employee : employeeList) {
    %>
    <tr>
      <td><%=employee.getFullName()%></td>
      <td><%=employee.getBirthday()%></td>
      <td><%=employee.getAddress()%></td>
      <td><%=employee.getPosition()%></td>
      <td><%=employee.getDepartment()%></td>
    </tr>
    <%
      }
    %>
    </tbody>
  </table>
  <nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
      <li class="page-item disabled">
        <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
      </li>
      <li class="page-item active"><a class="page-link" href="#">1</a></li>
      <li class="page-item"><a class="page-link" href="#">2</a></li>
      <li class="page-item"><a class="page-link" href="#">3</a></li>
      <li class="page-item">
        <a class="page-link" href="#">Next</a>
      </li>
    </ul>
  </nav>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>