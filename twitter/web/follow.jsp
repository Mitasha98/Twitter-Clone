<%-- 
    Document   : follow
    Created on : Oct 18, 2019, 10:35:19 AM
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
         try{
               Class.forName("com.mysql.jdbc.Driver");
          Connection conn=null;
         Statement ps=null;
        
          conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
          ps=conn.createStatement();
          Connection conn1=null;
        Statement ps1=null;
        
         Connection conn2=null;
         PreparedStatement ps2=null;
        
          conn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
         
          conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
         ps1=conn1.createStatement();
         
           String a=request.getParameter("id");//jise follow krna chahte
              String user=request.getParameter("user");// jisne login kiya
              
              String sql1="select * from followertable where following='" +user + "' and follower='" + a+ "'";
             ResultSet rs=ps1.executeQuery(sql1);
             if(!rs.next())
                                 {
                //  ResultSet rs1=ps.executeQuery("select count(*) from followertable");
           ResultSet rs1=ps.executeQuery("select MAX(followerid) from followertable");      
         rs1.next();
         int n=rs1.getInt(1);
              // ERROR aarha tha baaar baar , 1 value kam le rha tha , to krdala     
                  String sql="insert into followertable values(?,?,?)";
                    ps2=conn2.prepareStatement(sql);
                     ps2.setInt(1,++n);
          ps2.setString(2,a);
          ps2.setString(3,user);
          
          int u=ps2.executeUpdate();
      // 
          if(u>0)
                           {
              
              %>
               <script>  
                   window.open('home.jsp', '_self');      </script> 
        <%
                 }
         else{
              out.print( " Not Registered");
               %>
               <script>  alert( ' Not Registered '); 
//                   window.open('index.jsp', '_self');      </script> 
        <%
              
                 }
             }
             
         
         
       }catch(Exception exc){
            
          out.print(exc);
}
        %>
    </body>
</html>
