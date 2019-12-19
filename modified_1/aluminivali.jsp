<%@ page import ="java.sql.*" %>
<%
    String userid =request.getParameter("logemail");      
    String pwd =request.getParameter("logpass");  
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/spardha","root","Sai@9549");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select email,password from alumini where email='" + userid + "' and password='" + pwd + "'");
    if (rs.next())
    {
    	session.setAttribute("aluid",userid);
    	String otp="5261";
    	PreparedStatement ps=con.prepareStatement("insert into otp values(?,?)");
    	ps.setString(1,userid);
    	ps.setString(2,otp);
    	int r=ps.executeUpdate();
    	if(r==1)
    	{	
        response.sendRedirect("otpverify.jsp");
    	}
    } else {
        out.println("Invalid password "+"<a href='loginalumini.jsp'>"+"<br>"+"<button>+tryagain+</button>"+"</a>");
    }
%>










