
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  <title>College Registration</title>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="#">Welcome to website_name</a>
    </li>
  </ul>
</nav>
<br><br>
<div class="container">  
<div class="jumbotron">
  <h1 class="display-4" align="center">College Registration</h1>
  <br>
  <hr class="my-4">
  <br>
<form method="post" action="collegeenterdb.jsp">

  <div class="form-group">
    <label for="exampleFormCollegename">Name of the college*</label>
    <input type="text" class="form-control" id="exampleFormCollegename" placeholder="Enter the name of the college" name="colname" required>
  </div>
    <div class="form-group">
    <label for="exampleFormEmailId">Email Id*</label>
    <input type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" class="form-control" id="exampleFormEmailId" placeholder="Enter college Email Id" name="eid" required>
  </div>
  <div class="form-group">
    <label for="exampleFormpassword">Password*</label>

    <input type="password" class="form-control" id="exampleFormpassword" placeholder="Enter Password" name="pwd" required>
  </div>
  <div class="form-group">
    <label for="exampleFormpassword1">Confirm Password*</label>

    <input type="password" class="form-control" id="exampleFormpassword1" placeholder="Confirm Password" name="cpwd" required>
  </div>
  <div class="form-group">
    <label for="exampleFormDescription">Address*</label>
    <textarea class="form-control" id="exampleFormDescription" rows="5" placeholder="Enter College Address" name="address" required></textarea>
  </div>
  <input class="btn btn-primary" role="button" type="submit">Submit</a>
</form>
</div>
</div>
</div>
</body>
</html>




