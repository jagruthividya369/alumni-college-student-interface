<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.Random" %>
<%@ page isErrorPage="true" %>
<%
    String text1 =request.getParameter("text1");      

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/spardha","root","");
    
    
    Statement st = con.createStatement();
    String userid=(String)session.getAttribute("aluid");
    ResultSet rs;
    rs = st.executeQuery("select * from alumni where aemail='"+userid+"'");    
    if(rs.next())
    {
    
    
    
    
       PreparedStatement ps=con.prepareStatement("insert into groupchat values(?,?,?,?,?,?)");
        ps.setString(1,rs.getString(4));
        ps.setString(2,rs.getString(3));
        ps.setString(3,rs.getString(6));
        ps.setString(4,rs.getString(5));
        ps.setString(5,rs.getString(1));
        ps.setString(6,text1);

        int r=ps.executeUpdate();
        if(r>0)
        {    
        response.sendRedirect("group.jsp");
        }
        
        
    }
	
%>


