<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create User</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
  <h1>Tạo mới người dùng</h1>
  <div class="container mt-3">
  <form method="post" action="../create">
    <div class="mb-3">
      <label for="name">Tên:</label>
      <input class="form-control" type="text" id="name" name="name">
    </div>
    <div class="mb-3">
      <label for="age">Tuổi:</label>
      <input class="form-control" type="number" id="age" name="age">
    </div>
    <div class="mb-3">
      <label for="address">Địa chỉ:</label>
      <input class="form-control" type="text" id="address" name="address">
    </div>

    <button class="btn btn-primary" type="submit">Add</button>
  </form>
  </div>
</body>
</html>
