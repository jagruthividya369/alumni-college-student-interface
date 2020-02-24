<%@ page import ="java.sql.*" %>
<%
    //String userid =(String)session.getAttribute("aluid");
	//String kind=(String)session.getAttribute("kind");
    String de=request.getParameter("de");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/spardha","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    PreparedStatement ps=con.prepareStatement("delete from event where ename='" + de + "'");
    int r=ps.executeUpdate();
    if(r==1)
    {
    	response.sendRedirect("manevent.jsp");
    }
    
    

%>