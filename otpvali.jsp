<%@ page import ="java.sql.*" %>
<%
    String userid =(String)session.getAttribute("aluid");
	String kind=(String)session.getAttribute("kind");
    String ot1=request.getParameter("otp");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/spardha","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select otp from otp where userid='" + userid + "'");
    if(rs.next())
    {    String otpdb=rs.getString(1);
        if(ot1.equals(otpdb))
        {    PreparedStatement ps=con.prepareStatement("delete from otp where userid='" + userid + "'");
            ps.executeUpdate();
            if(kind.equals("alumni"))
            response.sendRedirect("alumnistart.jsp");
            else if(kind.equals("student"))
            response.sendRedirect("studentstart.jsp");
            else
            response.sendRedirect("collegestart.jsp");
            	
        }
        else
        {
            out.println("<a href=resendotp.jsp><button>resendotp</button></a>");
        }
    }
    
%>