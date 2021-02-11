<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.Random" %>
<%@ page isErrorPage="true" %>
<%
    String ename =request.getParameter("ename");      
    String email =request.getParameter("email");  
	String etype =request.getParameter("etype"); 
	String branch =request.getParameter("branch");
	String date1=request.getParameter("date1");
	String des=request.getParameter("des");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/spardha","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    String userid=(String)session.getAttribute("aluid");
    String kind=(String)session.getAttribute("kind");
    
    rs = st.executeQuery("select ename from event where ename='" + ename + "' ");
    if (rs.next())
    {
        response.sendRedirect("creevent.jsp");	
	}
	
	else
	{	
        PreparedStatement ps=con.prepareStatement("insert into event values(?,?,?,?,?,?,?,?)");
     
        
		ps.setString(1,ename);
		ps.setString(2,email);
		ps.setString(3,etype);
		ps.setString(4,branch);
		ps.setString(5,date1);
		ps.setString(6,des);
		ps.setString(7,userid);
		ps.setString(8,kind);
        int r=ps.executeUpdate();
        if(r>0)
        { 
        	if(kind.equals("college"))
        response.sendRedirect("collegestart.jsp");
        	else
        		response.sendRedirect("alumnistart.jsp");
        }
    } 
%>

