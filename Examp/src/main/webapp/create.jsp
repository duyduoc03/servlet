<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create Employee</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
  <h1 class="text-center mb-5">Create Employee</h1>
  <form method="post" action="/Create" class="needs-validation" novalidate>
    <div class="mb-3">
      <label for="fullName" class="form-label">Full Name:</label>
      <input type="text" class="form-control" id="fullName" name="fullName" required>
      <div class="invalid-feedback">
        Please enter a valid full name.
      </div>
    </div>
    <div class="mb-3">
      <label for="birthday" class="form-label">Birthday:</label>
      <input type="date" class="form-control" id="birthday" name="birthday" required>
      <div class="invalid-feedback">
        Please enter a valid birthday.
      </div>
    </div>
    <div class="mb-3">
      <label for="address" class="form-label">Address:</label>
      <input type="text" class="form-control" id="address" name="address" required>
      <div class="invalid-feedback">
        Please enter a valid address.
      </div>
    </div>
    <div class="mb-3">
      <label for="position" class="form-label">Position:</label>
      <input type="text" class="form-control" id="position" name="position" required>
      <div class="invalid-feedback">
        Please enter a valid position.
      </div>
    </div>
    <div class="mb-3">
      <label for="department" class="form-label">Department:</label>
      <input type="text" class="form-control" id="department" name="department" required>
      <div class="invalid-feedback">
        Please enter a valid department.
      </div>
    </div>
    <div class="mb-3">
      <button type="submit" class="btn btn-primary me-2">Add Employee</button>
      <button type="reset" class="btn btn-secondary">Reset Form</button>
    </div>
  </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script>
  (function () {
    'use strict'

    var forms = document.querySelectorAll('.needs-validation')

    Array.prototype.slice.call(forms)
            .forEach(function (form) {
              form.addEventListener('submit', function (event) {
                if (!form.checkValidity()) {
                  event.preventDefault()
                  event.stopPropagation()
                }

                form.classList.add('was-validated')
              }, false)
            })
  })()
</script>
</body>
</html>