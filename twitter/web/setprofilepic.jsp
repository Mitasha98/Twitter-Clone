<%-- 
    Document   : signup
    Created on : Oct 3, 2019, 12:42:30 PM
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
 <style>
            
            body {
  margin: 0;
  padding: 0;
  background: url(bgblur.png);
/*background-color: #1DA1F2;*/
  background-size: cover;
  font-family: sans-serif;
}

.box {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 38rem;
  padding: 4.5rem;
  box-sizing: border-box;
  background:white;
  border-radius: 12px;
}

.box h2 {
  margin: 0 0 1.875rem;
  padding: 0;
  color: black;
  text-align: center;
}

.box .inputBox {
  position: relative;
}

.box .inputBox input {
  width: 100%;
  padding: 0.625rem 0;
  font-size: 1rem;
  color: black;
  letter-spacing: 0.062rem;
  margin-bottom: 1.875rem;
  border:  none;
  border-bottom: 0.065rem solid #1DA1F2;
  outline:#1DA1F2;
  background: transparent;
}

.box .inputBox label {
  position: absolute;
  top: 0;
  left: 0;
  padding: 0.625rem 0;
  font-size: 1rem;
  color:#1DA1F2;
  pointer-events: none;
  transition: 0.5s;
}

.box .inputBox input:focus ~ label,
.box .inputBox input:valid ~ label,
.box .inputBox input:not([value=""]) ~ label {
  top: -2.125rem;
  left: 0;
  color: #03a9f4;
  font-size: 0.75rem;
}

.box input[type="submit"] {
  border: none;
  outline: none;
  color: #fff;
  background-color: #03a9f4;
  padding: 0.625rem 1.25rem;
  cursor: pointer;
  border-radius:12px;
  font-size: 1rem;
}

.box input[type="submit"]:hover {
  background-color:black;
}
        </style>
        
        
       
    </head>
    <body >
       
        <div class="box">
            
            <form  method="post" enctype="multipart/form-data" > 
                
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
          <input align="right" type="submit" name="Next" value="Next">
            <h2> <img src="logo.jpeg" width="50" height="50" align="center"></h2>
  <h2>Customize your appearence</h2>
  
  
    <div class="inputBox">
        <input type="text" name="description" required  value="">
      <label>Describe yourself,describe your likes, dislikes and interests
      </label><br>
    </div>
    <div class="inputBox">
     
      profile pic<br> <input type="file" name="dp" >
    </div>
    <div class="inputBox">
     
    cover photo<br> <input type="file" name="photo" >
    </div>
  <input type="hidden"  name="username" value="<%=(String)request.getParameter("username")%>">
  <input type="hidden"  name="name" value="<%=(String)request.getParameter("name")%>">
  <input type="hidden"  name="city" value="<%=(String)request.getParameter("city")%>">
  <input type="hidden"  name="password" value="<%=(String)request.getParameter("password")%>">
  </form>
  
</div>
       
  <%
   if(request.getParameter("Next")!=null)
             {
       
        try{
               Class.forName("com.mysql.jdbc.Driver");
          Connection conn=null;
          PreparedStatement ps=null;
        
          conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
         
           String a=request.getParameter("username");
          // out.print(a);
            String b=request.getParameter("name");
             String c=request.getParameter("password");
              String d=request.getParameter("city");
                String e=request.getParameter("description");
          Part p=request.getPart("dp");
          InputStream i=p.getInputStream();
          
            Part p1=request.getPart("photo");
          InputStream i1=p1.getInputStream();
          
          String sql="insert into user values(?,?,?,?,?,?,?)";
         
          ps=conn.prepareStatement(sql);
          ps.setString(1,a);
          ps.setString(2,b);
          ps.setString(3,c);
          ps.setString(4,d);
           ps.setBlob(5,i);
          ps.setBlob(6,i1);
            ps.setString(7,e);
         
          int u=ps.executeUpdate();
      // out.print( u);
          if(u>0)
                           {
              session.setAttribute("username", a);
              %>
               <script>  
                   window.open('home.jsp', '_self');      </script> 
        <%
                 }
         else{
               %>
               <script>  alert( ' Not Registered '); 
//                   window.open('index.jsp', '_self');      </script> 
        <%
              
                 }
       }catch(Exception exc)
              {
        //  out.print("<font color:#1DA1F2>  " +exc.toString() +"</font>");
}
   }else{}
  
  
  
  %>
    </body>
</html>
