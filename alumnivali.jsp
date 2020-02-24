<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.Random" %>
<%@ page isErrorPage="true" %>
<%
    String userid =request.getParameter("auserid");      
    String pwd =request.getParameter("apass");  
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/spardha","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select aemail,apass from alumni where aemail='" + userid + "' and apass='" + pwd + "'");
    if (rs.next())
    {
        Random rand=new Random();
        int rand1;
        String otp="";
        String a="0123456789";
        for(int i=0;i<4;i++)
        {
            rand1=rand.nextInt(10);
            otp=otp+a.charAt(rand1);
        }
        session.setAttribute("aluid",userid);
        session.setAttribute("kind","alumni");
        PreparedStatement ps=con.prepareStatement("insert into otp values(?,?)");
        ps.setString(1,userid);
        ps.setString(2,otp);
        session.setAttribute("otp",otp);
        int r=ps.executeUpdate();
        if(r==1)
        {    
        response.sendRedirect("mail.jsp");
        }
    } else {
        response.sendRedirect("loginalumni1.jsp");
    }
%>

