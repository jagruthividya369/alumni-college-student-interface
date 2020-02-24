<%@ page import="java.io.*"  %>
<%@ page import="java.sql.*"  %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/spardha","root","");
Statement st = con.createStatement();
String sname=request.getParameter("sname");
String sregno=request.getParameter("sregno");
String scolname=request.getParameter("scolname");
String semail=request.getParameter("semail");
String spoy=request.getParameter("spoy");
String sdept=request.getParameter("sdept");
String sphone=request.getParameter("sphone");
String slinked=request.getParameter("slinked");
String spass=request.getParameter("spass");
String cpass=request.getParameter("cpass");
PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?)");
if(!(spass.equals(cpass)))
{
    response.sendRedirect("studentreg1.jsp");
}
else
{
    ps.setString(1,sname);
    ps.setString(2,sregno);
    ps.setString(3,scolname);
    ps.setString(4,semail);
    ps.setString(5,spoy);
    ps.setString(6,sdept);
    ps.setString(7,sphone);
    ps.setString(8,slinked);
    ps.setString(9,spass);
int r=ps.executeUpdate();
if(r==1)
{
    response.sendRedirect("loginstudent.jsp");
}
}

%>