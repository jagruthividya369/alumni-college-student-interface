<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.Random" %>
<%@ page isErrorPage="true" %>
<%session.removeAttribute("aluid");
session.removeAttribute("kind");
session.removeAttribute("otp");
response.sendRedirect("homepage.jsp");%>





  
 