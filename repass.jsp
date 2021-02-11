<%@ page import ="java.sql.*" %>

<%


	String email=request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/spardha","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    String str="";
    rs = st.executeQuery("select * from alumni where aemail='" + email + "' ");
    if (rs.next())
    {
    	str=rs.getString(12);
	}
	session.setAttribute("pwd",str);
	session.setAttribute("email",email);
    response.sendRedirect("mail1.jsp");	
 
%>
