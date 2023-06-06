<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
  <h1>Create Employee</h1>
  <div class="container mt-3">
  <form method="post" action="/Create">
    <div class="mb-3">
      <label for="fullName">Full Name:</label>
      <input class="form-control" type="text" id="fullName" name="fullName">
    </div>
    <div class="mb-3">
      <label for="birthday">Birthday:</label>
      <input class="form-control" type="date" id="birthday" name="birthday">
    </div>
    <div class="mb-3">
      <label for="address">Address:</label>
      <input class="form-control" type="text" id="address" name="address">
    </div>
    <div class="mb-3">
      <label for="position">Position:</label>
      <input class="form-control" type="text" id="position" name="position">
    </div>
    <div class="mb-3">
      <label for="department">Department:</label>
      <input class="form-control" type="text" id="department" name="department">
    </div>

    <button class="btn btn-primary" type="submit">Add</button>
  </form>
  </div>
</body>
</html>
