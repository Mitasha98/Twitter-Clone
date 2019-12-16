<%-- 
    Document   : signup
    Created on : Oct 3, 2019, 12:42:30 PM
    Author     : Mitasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            
            <form action="setprofilepic.jsp"  method="post"> 
                
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
          <input align="right" type="submit" name="Next" value="Next">
            <h2> <img src="logo.jpeg" width="50" height="50" align="center"></h2>
  <h2>Customize your account</h2>
  
  
    
 <div class="inputBox">
      <input type="text" name="name" required  value="">
      <label>Name</label>
    </div>
    <div class="inputBox">
        <input type="email" name="username" required value="<%=(String)request.getParameter("email")%>" readonly>
      <label>username</label>
    </div>
      <div class="inputBox">
        <input type="password"  name="password" required  value="" >
      <label>password</label>
    </div>
      <div class="inputBox">
        <input type="text"  name="city" required  value="" >
        <label>city</label></div>
  </form>
  
</div>
       
         
    
    </body>
</html>
