<%-- 
    Document   : check
    Created on : Aug 22, 2019, 2:11:33 PM
    Author     : USER
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
        <%  Class.forName("com.mysql.jdbc.Driver");
        try{
            String user=request.getParameter("email"); 
            String pass=request.getParameter("password");
            //out.print(user);
            
          Connection conn=null;
          Statement st=null;
          conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
         String sql="select * from user where username='" + user + "' and password='" + pass + "'";  
        st=conn.createStatement();
         ResultSet rs=st.executeQuery(sql);
         if(rs.next())
                         {
             session.setAttribute("username",user);
             response.sendRedirect("home.jsp");
         }
                 else{
            
      out.print( "<script> alert('Invalid login, please try again! ');"
   
                       + "window.location.href= 'login.jsp' ; </script>  "); 
    //  response.sendRedirect( "login.jsp");
                 }
        }catch(Exception exv)
         {
             out.print(exv);
        }
        
        %>
    </body>
</html>
