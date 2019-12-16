<%-- 
    Document   : profileget
    Created on : Oct 14, 2019, 3:50:17 PM
    Author     : Mitasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.InputStream " %>       <%-- //to convert image into byte --%>
<%@page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try{
        String user=   (String)session.getAttribute("username");
        Connection conn=null;
        Class.forName("com.mysql.jdbc.Driver");
        conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");    
        Statement st=conn.createStatement();
        ResultSet rs=st.executeQuery("select photo from user where username='" +user +"'");
        rs.next(); 
        String s=rs.getString(1);
        byte rb[]=new byte[s.length()];
        InputStream i=rs.getBinaryStream(1);
        i.read(rb,0,s.length());
        response.reset();
        response.setContentType("image/jpg");
        response.getOutputStream().write(rb,0, s.length());
        response.getOutputStream().flush();
                       }catch(Exception exc)
                {
                    
                }                               
        %>
    </body>
</html>
