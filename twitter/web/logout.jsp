<%-- 
    Document   : logout
    Created on : Oct 23, 2019, 3:13:23 PM
    Author     : Mitasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        session.removeValue("username");
        session.removeAttribute("username");
        session.invalidate();
        response.setHeader("Cache-Control","no-cache");
       response.setHeader("Pragma","no-cache");
       response.setDateHeader("Expires",0);
       response.setHeader("Cache-Control","no-store"); 
       response.sendRedirect("login.jsp"); 
        %>
    </body>
</html>
