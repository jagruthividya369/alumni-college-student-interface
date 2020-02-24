<%@ page import ="java.sql.*" %>
<%
   
	 String email= (String)session.getAttribute("email");

		String otp1= (String)session.getAttribute("otp1");
    String ot1=request.getParameter("otp");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/spardha","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select otp from otp where userid='" + email + "'");
    if(rs.next())
    {    String otpdb=rs.getString(1);
        if(otp1.equals(otpdb))
        {   
        	response.sendRedirect("chapassword.jsp");
        }
        else
        {
            out.println("<a href=resendotp.jsp><button>resendotp</button></a>");
        }
    }
    
%>