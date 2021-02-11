<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alumni Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 <link rel="Stylesheet" href="loginAlumni.css">
</head>
<body>
     <div class="container">
        <div class="jumbotron">
        <h1 class="display-4" id="header">Alumni Registration</h1>
        <br>
        <hr class="my-4">
        <br>
        
    <form method="post" action="alumnidbenter.jsp">
            <div class="container">
                <div class="row">
                    <div class="col-sm">
                             <div class="form-group">
                                 <label for="exampleInputName1">Full Name*</label>
                                  <input type="text" class="form-control" id="exampleInputName1" aria-describedby="nameHelp" name="aname" placeholder="Enter your full name" required>
                                  <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                              </div>
                     </div>
                     <div class="col-sm">
                             <div class="form-group">
                                  <label for="exampleInputReg1">Registration number*</label>
                                  <input type="text" class="form-control" id="exampleInputReg1" name="aregno" aria-describedby="regHelp" name="aname" placeholder="Enter your college registration number" required>
                                  <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                             </div>
                     </div>
                  </div>
             </div>
             <div class="container">
             
                  <div class="form-group">
                         <label for="exampleInputClg1">College Name*</label>
                         <input type="text" class="form-control" id="exampleInputClg1" name="acolname" aria-describedby="colHelp"  placeholder="Enter your college name" required>
                         <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                  </div>
            </div>
          <div class="container">
                <div class="row">
                    <div class="col-sm">
                    <div class="form-group">
                          <label for="exampleInputDept1">Department*</label>
                          <select class="form-control" id="exampleInputDept1" name="adept" aria-describedby="deptHelp" required>
                                <option>Select</option>
                                <option>CSE</option>
                                <option>IT</option>
                               <option>ECE</option>
                               <option>MECH</option>
                               <option>CIVIL</option>
                               <option>EEE</option>
                   
                           </select>
                      </div>
                             </div>
                     <div class="col-sm">              
                           <div class="form-group">
                                  <label for="exampleInputPoy1">Passed Out Year*</label>
                                  <input type="number" class="form-control" id="exampleInputPoy1" name="apoy" aria-describedby="poyHelp"  placeholder="Passed out Year" required>
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
                                   <input type="email" class="form-control" id="exampleInputmail1" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name="aemail" aria-describedby="mailHelp"  placeholder="eg:johndoe@gmail.com" required>
                                   <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                            </div>
                     </div>
                     <div class="col-sm">
                             <div class="form-group">
                                   <label for="exampleInputContact1">Contact no*</label>
                                   <input type="text" class="form-control" id="exampleInputDes1" name="aphone" aria-describedby="phoneHelp"  placeholder="Mobile number" required>
                                   <small id="emailHelp" class="form-text text-muted">We'll never share your mobile number with anyone else.</small>
                             </div>
                     </div>
                  </div>
             </div>
      
         <div class="container">
          <div class="form-group">
            <label for="exampleInputDomain1">Domain*</label>
                          <select class="form-control" id="exampleInputDomain1" name="adomain" aria-describedby="domainHelp" required>
                                <option>Select</option>
                                <option>Entrepreneur</option>
                                <option>Employee</option>
                              
                           </select>
                           </div>
          </div>
          <div class="container">
                <div class="row">
                    <div class="col-sm">
                             <div class="form-group">
                                       <label for="exampleInputCmpy1">Company*</label>
                                       <input type="text" class="form-control" id="exampleInputCmpy1" name="acompany" aria-describedby="companyHelp"  placeholder="Company name" required>
            <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                             </div>
                     </div>
                     <div class="col-sm">
                             <div class="form-group">
                                  <label for="exampleInputDes1">Designation*</label>
                                  <input type="text" class="form-control" id="exampleInputDes1" name="ades" aria-describedby="designationHelp"  placeholder="Designation/Position" required>
                                  <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                              </div>
                     </div>
                  </div>
             </div>
          <div class="container">
          <div class="form-group">
            <label for="exampleInputlink1">LinkedIn</label>
            <input type="text" class="form-control" id="exampleInputlink1" name="alinked" aria-describedby="linkHelp"  placeholder="Linked In URL">
            <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
          </div>
          </div>
          <div class="container">
                <div class="row">
                    <div class="col-sm">
                             <div class="form-group">
                                   <label for="exampleInputPasswrd1">Password*</label>
                                   <input type="password" class="form-control" id="exampleInputPasswrd1" name="pass" placeholder="Enter your password" required>
                              </div>
                     </div>
                     <div class="col-sm">
                             <div class="form-group">
                                   <label for="exampleInputCPasswrd1">Confirm Password*</label>
                                   <input type="password" class="form-control" id="exampleInputCPasswrd1" name="cpass" placeholder="Enter your confirm password" required>
                                   <small id="CpassHelp" class="form-text text-muted">Password Mismatch!!</small>
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