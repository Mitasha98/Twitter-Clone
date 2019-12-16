<%-- 
    Document   : unfollow
    Created on : Oct 18, 2019, 12:02:44 PM
    Author     : Mitasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.InputStream" %>
<%@page import=" javax.servlet.http.Part"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
        <%
         //  String a=request.getParameter("id");//jise follow krna chahte
             // String user=request.getParameter("user");// jisne login kiya
               int idd=Integer.parseInt(request.getParameter("user"));
            Class.forName("com.mysql.jdbc.Driver");
          Connection conn=null;
         PreparedStatement ps=null;
        
          conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
          ps=conn.prepareStatement("delete from followertable where followerid="+idd);
         
          ps.executeUpdate(); 
          response.sendRedirect("home.jsp");
          %>
   
   
    
    </body>
</html>
