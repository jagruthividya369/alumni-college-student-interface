<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>OTP page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
     <link rel="Stylesheet" href="loginAlumni.css">
  </head>
  <body>
  
  
       <nav class="navbar fixed-top navbar-dark bg-dark">
       <a class="navbar-brand" href="#">Welcome Alumni-College-Student Interface</a>
  <!-- Navbar content -->
       </nav>
       <br>

  <br>
  <br><br>
    <form method="post" action="otpvali1.jsp">
      <div class="container">
        <div class="jumbotron">
          
        <div class="form-group row">
    <label for="inputotp2" class="col-sm-2 col-form-label">Received OTP</label>
    <div class="col-sm-10">
      <input type="number" class="form-control" id="inputotp2" name="otp" placeholder="Enter the 4 digit OTP received through email">
    </div>
    <br><br>
    <br>
<div class="container">
           <div class="text-center">
          <button type="submit" class="btn btn-primary">Get OTP</button>
          </div>
            </div>
          </div>
          </div>
        </form>

  </body>
</html>





  

  












    
