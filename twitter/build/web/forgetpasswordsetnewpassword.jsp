<%-- 
    Document   : signup
    Created on : Oct 3, 2019, 12:42:30 PM
    Author     : Mitasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%><%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; chars et=UTF-8">
        <title>JSP Page</title>
 <style>
            
            body {
  margin: 0;
  padding: 0;
  background: url(bgblur.png);
  background-size: cover;
  font-family: sans-serif;
}

.box {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 38rem;
  padding: 7.5rem;
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

.container-login100-form-btn1 {
  width: 100%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
 
}

.login100-form-btn1 {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0 20px;
  width: 100%;
  height: 50px;
  border-radius: 3px;
  background: #1DA1F2;
   border-radius: 12PX;

  font-family: Montserrat-Bold;
  font-size: 14px;
  color: #fff;
  line-height: 1.2;
  text-transform: uppercase;
  letter-spacing: 1px;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.login100-form-btn1:hover {
  background: #333333;
}


        </style>
        
      
       
    </head>
    <body >
       
        <div class="box">
            
            <form  method="get" > 
           
            <h2> <img src="logo.jpeg" width="50" height="50" align="center"></h2>
  <h2>Set new Password</h2>
  
  
    <div class="inputBox">
      <input type="hidden" name="email" required  value="<%=(String)request.getParameter("email")%>">
      <label>Email/username</label>
    </div>
    <div class="inputBox">
      <input type="password" name="password" required value="">
      <label>password</label>
    </div>
 <div class="inputBox">
      <input type="password" name="password1" required value="">
      <label>confirm password</label>
    </div>
   
    <div class="container-login100-form-btn1">
        <input type="submit" name="ss" class="login100-form-btn1"  value="Confirm">
							
						</button>
					</div>
  
  
   
  </form>
           
</div>
       
       <%
   if(request.getParameter("ss")!=null)
             {
       
        try{
               Class.forName("com.mysql.jdbc.Driver");
          Connection conn=null;
          PreparedStatement ps=null;
        
          conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
         
           String a=request.getParameter("email");
          // out.print(a);
           
             String c=request.getParameter("password");
             
          String sql="update user set password=? where username='"+(String)request.getParameter("email")+"'";
         
          ps=conn.prepareStatement(sql);
          ps.setString(1,c);
       //   ps.setString(2,a);
          
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
                  window.open('index.jsp', '_self');      </script> 
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
