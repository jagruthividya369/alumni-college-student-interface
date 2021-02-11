<%@ page import="java.io.*"  %>
<%@ page import="java.sql.*"  %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/spardha","root","");
Statement st = con.createStatement();
Statement st1 = con.createStatement();
Statement st2=con.createStatement();
String an=request.getParameter("aname");
String ac=request.getParameter("acolname");
String apoy=request.getParameter("apoy");
String adep=request.getParameter("adept");
String aem=request.getParameter("aemail");
String acom=request.getParameter("acompany");
String adesig=request.getParameter("ades");
String ad=request.getParameter("adomain");
String areg=request.getParameter("aregno");
String apass=request.getParameter("pass");
String acpass=request.getParameter("cpass");
String aphno=request.getParameter("aphone");
String alink=request.getParameter("alinked");
//response.sendRedirect("alumnireg2.jsp");

PreparedStatement ps=con.prepareStatement("insert into alumni values(?,?,?,?,?,?,?,?,?,?,?,?)");
if(!(apass.equals(acpass)))
{
    response.sendRedirect("alumnireg1.jsp");
}
else
{
	String retrieve="select aregno from alumni where aregno=' "+areg+" ' ";
	ResultSet rs1= st2.executeQuery(retrieve);
	if(rs1.next())
	{
		response.sendRedirect("alumnireg2.jsp");
	} 
	else {
	String sql = "select regno from colstu where regno='"+areg+"'";
	ResultSet rs= st1.executeQuery(sql);
	if(rs.next())
		{
	ps.setString(1,an);
    ps.setString(2,areg);
    ps.setString(3,ac);
    ps.setString(4,aem);
    ps.setString(5,apoy);
    ps.setString(6,adep);
    ps.setString(7,ad);
    ps.setString(8,acom);
    ps.setString(9,adesig);
    ps.setString(10,aphno);
    ps.setString(11,alink);
    ps.setString(12,apass);
int r=ps.executeUpdate();
if(r==1)
{
    response.sendRedirect("loginalumni.jsp");
}
		}
}}
%>
