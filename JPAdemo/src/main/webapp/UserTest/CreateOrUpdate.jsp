<%--
  Created by IntelliJ IDEA.
  User: Duoc
  Date: 5/27/2023
  Time: 7:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<div class="container mt-3">
  <form action="/userServlet" method="post">
    <div class="mb-3">
      <label class="form-label">Name</label>
      <input type="text" name="name" class="form-control" value="${not empty user ? user.name : ''}" >
    </div>
    <div class="mb-3">
      <label class="form-label">Age</label>
      <input type="number" name="age" class="form-control" value="${not empty user ? user.age : ''}">
    </div>
    <div class="mb-3">
      <label class="form-label">Address</label>
      <input type="text" name="address" class="form-control" value="${not empty user ? user.address : ''}">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
    <button type="button" onclick="history.back()">Cancel</button>
  </form>
</div>

</body>
</html>
