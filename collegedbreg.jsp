<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.Random" %>
<%@ page isErrorPage="true" %>
<%	String userid=(String)session.getAttribute("aluid");
    String id =request.getParameter("idnum");     
    String poy =request.getParameter("poy"); 

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/spardha","root","");
    
    
    Statement st = con.createStatement();
 
    
    
    
       PreparedStatement ps=con.prepareStatement("insert into colstu values(?,?,?)");
        ps.setString(1,id);
        ps.setString(2,poy);
        ps.setString(3,userid);


        int r=ps.executeUpdate();
        if(r>0)
        {    
        response.sendRedirect("collegedb.jsp");
        }
        
        
%>