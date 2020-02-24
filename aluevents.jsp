<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.Random" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
 <meta charset="utf-8">
    <title>Alumni Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 <link rel="Stylesheet" href="loginAlumni.css">
  <style>
 .table {margin-left: 50px; margin-top: 30px; margin-right: 100px; margin-bottom: 25px; }</style>
 </head>
<body>

<nav class="navbar fixed-top navbar-dark bg-dark">
       <a class="navbar-brand" href="#">Welcome Alumni-College-Student Interface</a>
  <!-- Navbar content -->
       </nav>
       <br><br><br>
<div  class="Container">
<table class="table table-striped">
<%	String userid=(String)session.getAttribute("aluid");
	String kind="alumni";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/spardha","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select ename,etype,branch,date1,des from event where kind='" +kind+ "'");
    out.print("<thead>"+
    	    "<tr>"+
    	    "<th scope='col'>EventName</th>"+
    	      "<th scope='col'>Type</th>"+
    	      "<th scope='col'>Branch</th>"+
    	      "<th scope='col'>Date1</th>"+
    	      "<th scope='col'>Description</th>"+
    	    "</tr>"+
    	    "</thead>");
    out.print("<tbody>");
    while(rs.next())
    {
	out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td></tr>");
    }
    out.print("</tbody>");

%>
</table>
</div>
</body>
</html>





  
 