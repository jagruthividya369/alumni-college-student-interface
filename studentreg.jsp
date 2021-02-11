<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 <link rel="Stylesheet" href="loginAlumni.css">
</head>
<body>
<nav class="navbar fixed-top navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="#">Welcome to Alumni-College-Student Interface</a>
    </li>
  </ul>
</nav>

<br><br>
     <div class="container">
        <div class="jumbotron">
        <h1 class="display-4" id="header"align="center">Student Registration</h1>
        <br>
        <hr class="my-4">
        <br>
        
    <form method="post" action="studententerdb.jsp">
            <div class="container">
                <div class="row">
                    <div class="col-sm">
                             <div class="form-group">
                                 <label for="exampleInputName1">Full Name*</label>
                                  <input type="text" class="form-control" name="sname" id="exampleInputName1" aria-describedby="nameHelp"  placeholder="Enter your full name" required>
                                  <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                              </div>
                     </div>
                     <div class="col-sm">
                             <div class="form-group">
                                  <label for="exampleInputReg1">Registration number*</label>
                                  <input type="text" class="form-control" name="sregno" id="exampleInputReg1"  aria-describedby="regHelp"  placeholder="Enter your college registration number" required>
                                  <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                             </div>
                     </div>
                  </div>
             </div>
             <div class="container">
             
                  <div class="form-group">
                         <label for="exampleInputClg1">College Name*</label>
                         <input type="text" class="form-control" name="scolname" id="exampleInputClg1"  aria-describedby="colHelp"  placeholder="Enter your college name" required>
                         <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                  </div>
            </div>
          <div class="container">
                <div class="row">
                    <div class="col-sm">
                         <div class="form-group">
    							<label for="exampleFormEventType1">Department*</label>
    							<select class="form-control" name="sdept" id="exampleFormControlSelect2">

      								<option>CSE</option>
      								<option>ECE</option>
      								<option>MECH</option>
      								<option>CIVIL</option>
      								<option>EEE</option>
      								<option>IT</option>
    							</select>
  						</div>
                     </div>
                     <div class="col-sm">              
                           <div class="form-group">
                                  <label for="exampleInputPoy1">Passing Out Year*</label>
                                  <input type="number" class="form-control" name="spoy" id="exampleInputPoy1"  aria-describedby="poyHelp"  placeholder="Passing out Year" required>
                                   <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                            </div>
                     </div>
                  </div>
             </div>
          
             <div class="container">
                <div class="row">
                    <div class="col-sm">
                             <div class="form-group">
                                   <label for="exampleInputmail1">Email Id*</label>
                                   <input type="email" class="form-control" name="semail" id="exampleInputmail1" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" aria-describedby="mailHelp"  placeholder="eg:johndoe@gmail.com" required>
                                   <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                            </div>
                     </div>
                     <div class="col-sm">
                             <div class="form-group">
                                   <label for="exampleInputContact1">Contact no*</label>
                                   <input type="text" class="form-control" name="sphone" id="exampleInputDes1"  aria-describedby="phoneHelp"  placeholder="Mobile number" required>
                                   <small id="emailHelp" class="form-text text-muted">We'll never share your mobile number with anyone else.</small>
                             </div>
                     </div>
                  </div>
             </div>
      
         

          <div class="container">
          <div class="form-group">
            <label for="exampleInputlink1">LinkedIn</label>
            <input type="text" class="form-control" id="exampleInputlink1" name="slinked" aria-describedby="linkHelp"  placeholder="Linked In URL">
            <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
          </div>
          </div>
          <div class="container">
                <div class="row">
                    <div class="col-sm">
                             <div class="form-group">
                                   <label for="exampleInputPasswrd1">Password*</label>
                                   <input type="password" class="form-control" name="spass" id="exampleInputPasswrd1"  placeholder="Enter your password" required>
                              </div>
                     </div>
                     <div class="col-sm">
                             <div class="form-group">
                                   <label for="exampleInputCPasswrd1">Confirm Password*</label>
                                   <input type="password" class="form-control" name="cpass" id="exampleInputCPasswrd1" placeholder="Enter your confirm password" required>
                             </div>
                     </div>
                  </div>
             </div>
         <br>
           <div class="text-center">
          <button type="submit" class="btn btn-primary">Submit</button>
          </div>
            
        </form>
        
        </div>
          </div>

</body>
</html>