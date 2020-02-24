
<%@ page import ="java.sql.*" %>

<%@ page isErrorPage="true" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.poz1
{
position:auto;
}
.poz2
{
hight:50px;
position:auto;
}
.poz1 {
  width: 90%;
  hight:50px;
  padding: 7px 0px;
}
</style>
</head>
<body>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/spardha","root","");
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    String userid=(String)session.getAttribute("aluid");
    ResultSet rs;
    ResultSet rs1;
    String str1="";
    String str2="";
    String str3="";
    rs = st.executeQuery("select * from alumni where aemail='"+userid+"'");  
    if(rs.next())
    	str1=rs.getString(5);
    	str2=rs.getString(6);
    	str3=rs.getString(3);
    rs1 = st1.executeQuery("select * from groupchat where poy='"+str1+"' and college='"+str3+"' and branch='"+str2+"'");
    while (rs1.next())
    {%>
    <div>
<%=rs1.getString(5)%>:
<%=rs1.getString(6)%><br>
<% }%>
</div>
<form action="group1.jsp">
</div align="right">
<input type="text" placeholder="enter messege" name="text1" class="poz1">
<input type="submit" value="submit" class="poz2">
</div>
</form>
</body>
</html>

