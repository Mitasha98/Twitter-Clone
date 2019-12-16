<%-- 
    Document   : testing1
    Created on : Oct 5, 2019, 10:42:54 AM
    Author     : Mitasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%> 
<%@page import="java.io.InputStream" %>
<%@page import=" javax.servlet.http.Part"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
   
.box4 .inputBox {
  position: relative;
}

.box4 .inputBox input {
  width: 100%;
  padding: 0.625rem 0;
  font-size: 1rem;
  color:#1DA1F2;
  letter-spacing: 0.062rem;
  margin-bottom: 1.875rem;
  border:  none;
  border-bottom: 0.065rem solid #1DA1F2;
  outline:#1DA1F2;
  background: transparent;
}

.box4 .inputBox label {
  position: absolute;
  top: 0;
  left: 0;
  padding: 0.625rem 0;
  font-size: 1rem;
  color:#1DA1F2;
  pointer-events: none;
  transition: 0.5s;
  background-color: white;
}

.box4 .inputBox input:focus ~ label,
.box4 .inputBox input:valid ~ label,
.box4 .inputBox input:not([value=""]) ~ label {
  top: -2.125rem;
  left: 0;
  color:  #03a9f4;
  font-size: 1.75rem;
  background-color: white;
}

.box4 input[type="submit"] {
  border: none;
  outline:#1DA1F2;
  color:#03a9f4;
  background-color: white;
  padding: 0.625rem 1.25rem;
  cursor: pointer;
  border-radius:12px;
  font-size: 1.25rem;
  width: 100%;
  font-weight: bolder;
}

.box4 input[type="submit"]:hover {
  background-color:white;/*   #03a9f4;*/
  color:#03a9f4;
  
}


            
.box1 .inputBox {
  position: relative;
}

.box1 .inputBox input {
  width: 100%;
  padding: 0.625rem 0;
  font-size: 1rem;
  color: black;
  letter-spacing: 0.062rem;
  margin-bottom: 1.875rem;
  border:1;
  border-bottom: 0.065rem solid #1DA1F2;
  outline:#1DA1F2;
  background: transparent;
}

.box1 .inputBox label {
  position: absolute;
  top: 0;
  left: 0;
  padding: 0.625rem 0;
  font-size: 1.5rem;
  color:black;
  pointer-events:  none;
  transition: 0.5s;
  cursor:blink;
}

.box1 .inputBox input:focus ~ label,
.box1 .inputBox input:valid ~ label,
.box1 .inputBox input:not([value=""]) ~ label {
  top: -2.125rem;
  left: 0;
  color: black;
  font-size: 1.75rem;
}

.box1 input[type="text"] {
  border: 1;
  outline: none;
  color:black;
  background-color: lightgrey;
  padding: 0.5rem 1rem;
/*  cursor: pointer;*/
  border-radius:16px;
  font-size: 1rem;
  width: 100%;
/*  font-weight: bolder;*/
/*  border-color: #1DA1F2;*/
  
}

.box1 input[type="text"]:hover {
  background-color:lightgrey;
  color: black;
  
}
            /* Remove unnecessary margins/padding */
html, body { margin: 0; padding: 0 }

.wrapper {
  display: grid;
  /* Header and footer span the entire width, sidebars and content are fixed, with empty space on sides */
  grid-template-areas:
    "header header header header header"
    "empty_left sidebar_1 content sidebar_2 empty_right"
    "footer footer footer footer footer";
  /* Only expand middle section vertically (content and sidebars) */
  grid-template-rows: 0fr 1fr 0fr;
  /* 100% width, but static widths for content and sidebars */
  grid-template-columns: 1fr 275px 450px 600px  1fr;
  /* Force grid to be at least the height of the screen */
  min-height: 100vh;
}
.header {
  grid-area: header;

  /* Stick header to top of grid */
  position: sticky;
  top: 0;
  /* Ensure header appears on top of content/sidebars */
  z-index: 1;

  /* General appearance */
  background-color: white;
   font-family: sans-serif;
/*  text-align: center;*/
  font-size: 1rem;
  line-height: 1.5;
  padding: 1rem;
  border-bottom: 0.065rem solid gray;
  border-right:  0.065rem solid lightgray;
  border-left:  0.065rem solid lightgray;
  border-top:  0.065rem solid lightgray;
  border-color: lightgrey;
  border: 1;
}
/* Save header height to properly set `padding-top` and `margin-top` for sticky content */
:root {
/*  --header-height: calc(1rem * 1.5 + 1rem * 2);*/
}

.sidebar-1 {
  grid-area: sidebar_1;
}
.sidebar-2 {
  grid-area: sidebar_2;
  
}
.sidebar-1,
.sidebar-2 {
  display: flex;
  flex-direction: column;
  position: sticky;
  top: 0;

  /* Styling to match reference */
/*  background-color: #BC514F;*/
}

.content {
  grid-area: content;
   grid-area: content;
   border-right:  0.065rem solid lightgray;
  border-left:  0.065rem solid lightgray;
  border: 1;
   border-color: lightgrey;
  
  /* General appearance */
/*  background-color: #99BB5E;*/
}
.footer {
  grid-area: footer;

  /* Stick footer to bottom of grid */
  position: sticky;
  bottom: 0px;
left: 0;
  /* General appearance */
/*  background-color: #FCFF34;*/
  text-align: center;
  font-size: .8rem;
  line-height: 1.5;
  padding: 1.5rem;
}
/* Save footer height to properly set `bottom` and `min-height` for sticky content */
:root {
  --footer-height: calc(0rem * 0 + 0rem * 0);
}

.sticky-spacer {
  flex-grow: 1;
}
.sticky-content {
  position: sticky;
  bottom: var(--footer-height); 
  min-height: calc(100vh - var(--footer-height));
  box-sizing: border-box;
  
  --padding: 10px;
  padding:
    calc(var(--header-height) + var(--padding))
    var(--padding)
    var(--padding);
  margin-top: calc(0px - var(--header-height));
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
  color:  #03a9f4;
  font-size: 1.75rem;
}

.box input[type="submit"] {
  border: none;
  outline: none;
  color:#03a9f4;
  background-color: white;
  padding: 0.625rem 1.25rem;
  cursor: pointer;
  border-radius:12px;
  font-size: 1.25rem;
  width: 100%;
  font-weight: bolder;
}

.box input[type="submit"]:hover {
  background-color:#03a9f4;/*   #03a9f4;*/
  color: white;
  
}


        </style>
        <script>
           function a1(){
             window.location.href="home.jsp";           }
             function a2(){
             window.location.href="explore.jsp";           }
          function a3(){
             window.location.href="notification.jsp";           }
          function a4(){
             window.location.href="message.jsp";           }
          function a5(){
             window.location.href="profile.jsp";           }
//         function a6(x){
//             window.location.replace("message.jsp?id="+x.value());
//         }
          function a7(){
 
//               document.getElementById("foll2").style.visibility="hidden"; 
          }
         
        </script>
    </head>
    <body onLoad="a7()">
     <div class="wrapper">
<!--<div class="header">Header (Absolute)</div>-->
<div class="sidebar-1">
  <div class="sticky-spacer"></div>
  <div style="background-color:white" class="sticky-content">
<!--      &nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;<img src="logo.jpeg" width="40" height="40" align="absmiddle">-->
     <table align="center" cellpadding="3" cellspacing="5">
          <tr><td><img src="logo.jpeg" width="40" height="40" align="absmiddle"></td>   <td> <div class="box">   </div></td></tr>
          <tr ><td colspan="2"  align="center"><img src="logo.jpeg" style="visibility:hidden;" width="0" height="0" align="absmiddle"></td>
          </tr>
          <tr><td><img src="home.png" width="30" height="30"></td>   <td> <div class="box">   <input  align="right" type="submit" name="Next" onClick="a1()" value="Home"> </div></td></tr>
          <tr><td><img src="hash.png" width="30" height="30"></td><td> <div class="box">  <input  align="right" type="submit" name="Next" value="Explore" onClick="a2()" > </div></td></tr>
          <tr><td><img src="noti.png" width="30" height="30"></td><td> <div class="box">      <input  align="right" type="submit" name="Next" value="Notification" onClick="a3()" > </div></td></tr>
           <tr><td><img src="msg.png" width="30" height="30"></td><td> <div class="box">  <input  align="right" type="submit" name="Next" value="Message" onClick="a4()" > </div></td></tr>
           <tr><td><img src="bookmark.png" width="30" height="30"></td><td> <div class="box">   <input  align="right" type="submit" name="Next" value="Bookmarks"> </div></td></tr>
           <tr><td><img src="list.png" width="30" height="30"></td><td> <div class="box"> <input  align="right" type="submit" name="Next" value="Lists"> </div></td></tr>
           <tr><td><img src="more.png" width="30" height="30"></td><td> <div class="box">   <input  align="right" type="submit" name="Next" value="Profile" onClick="a5()" > </div></td></tr>
            <tr><td><img src="more.png" width="30" height="30"></td><td> <div class="box">   <input  align="right" type="submit" name="Next" value="More"> </div></td></tr>
<!--            <tr><td><td></td></tr>-->
      </table>
       <div class="box">&nbsp;&nbsp;&nbsp;&nbsp;   <input style=" color:white;
  background-color:#03a9f4;padding: 0.5rem 0.5rem; width:80%; hover= background-color:#03a9f4;   
  color: white  ;
  
  
 "  align="center" type="submit" name="Next" value="Tweet"> </div>
      
    </div>
</div>
<div class="content">
  <div class="sticky-spacer"></div>
  <div class="sticky-content">
      <div class="header"><b>Messages</b></div>
     <table width="445"  border="0" bordercolor="#999999" style=" border-bottom: 0.065rem solid  ; border-color: lightblue">
        <tr>
          <td width="466" height="57" >
              <div class="box1"><img src="search.png" > &nbsp;<input type="text" name="Next1"
                                                     style=" color:black;padding: 0.5rem 0rem;
                                                     background-color:whitesmoke; width:90%  ; height:130% " align="left" placeholder="  Search Twitter" > </div>
          </td>
        </tr>
      </table>
      <table rules="rows"  border="0"  width="646" class="content"style=" border-bottom: 0.065rem solid  ; border-color: lightgray">
             <%  try{
  
               Class.forName("com.mysql.jdbc.Driver");
                Connection conn=null;
          Statement ps=null; 
           conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
           ps=conn.createStatement();
            
            
               
         Connection conn2=null;
          Statement ps2=null; 
           conn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
           
           
           ps2=conn2.createStatement();
           ResultSet rs1=ps2.executeQuery("select * from user"); 
           while(rs1.next()){
           if( !rs1.getString("username").equals((String)session.getAttribute("username"))){  %>
                <table  border="0" bordercolor="#999999" style=" border-bottom: 0.095rem solid gray ; border-color: lightgray">
        <tr>
          <td width="65" valign="top" >
<!--              <div class="user one"></div>-->
              <img src="profilegetexplore.jsp?id=<%=rs1.getString("username")%>" style=" vertical-align: top; display: inline-block;
  width: 60px;
  height: 60px;
  border-radius: 50%;

  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;"  />          </td >
          
		  <td width="480">
                     <%=rs1.getString("name") %><br><br></td>
                     
       
		  <td> <div class="box">
                   <form>    <input style=" color:white; font-size: 16px;
   background-color:#03a9f4;padding: 0.5rem 0.5rem; width:100%; hover= background-color:#03a9f4;   
   color: white  ;
  
  
   "  align="right" type="submit" name="msg" value="msg"   onclick= "window.open('message.jsp?id=<%=rs1.getString("username")%>')" >  </form> </div>
                  </td>
                  
               </tr> </table>
        <%
                                    }}  
  
    }catch(Exception exc) 
              {
        //  out.print("<font color:#1DA1F2>  " +exc.toString() +"</font>");
} %> </table>
      
       
      
   </div>
 </div>
 <div class="sidebar-2">
   <div class="sticky-spacer"></div>
  <div id="foll2" class="sticky-content"style=" background-color: white;">
 <table style="height: 625px;width: 600px;" border="0" bordercolor="#999999" style=" border-bottom: 0.565rem solid  ; border-color: whitesmoke">
                      <tfoot> 
     <% 
    
 try{ 
  
               Class.forName("com.mysql.jdbc.Driver");
                Connection conn4=null;
          Statement ps4=null; 
           conn4=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
           ps4=conn4.createStatement();
           
            Connection conn3=null;
          Statement ps3=null; 
           conn3=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
            ps3=conn3.createStatement();
            ResultSet rs3=ps3.executeQuery("select * from user where username='"+((String)request.getParameter("id")) +"'");
            rs3.next(); 
            %>
             <img src="profilegetexplore.jsp?id=<%=rs3.getString("username")%>" style=" vertical-align: top; display: inline-block;
  width: 60px;
  height: 60px;
  border-radius: 50%;

  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;"  /> &nbsp;<%=rs3.getString("name") %> 
              
           <%
              ResultSet rs4=ps4.executeQuery("select * from message where to1='"+((String)request.getParameter("id")) +"' and from1='"+(String)session.getAttribute("username") +"' or to1='"+(String)session.getAttribute("username") +"' and from1='"+((String)request.getParameter("id")) +"'"); 
              while(rs4.next()){
                  
              
                  %>
                    <%
                      if(rs4.getString("to1").equals(((String)request.getParameter("id")))){
                          %>
                          
                          <tr><td align=right style="alignment-adjust: right"> </td><td align=right style="alignment-adjust: right">
                             
                          <div class="box">
                               <input style=" color:white; font-size: 16px;
   background-color:#03a9f4;padding: 0.5rem 0.5rem; width:auto; hover= background-color:#03a9f4;   
   color: white  ;
  
  
   "  align="right" type="submit" name="m2" value="<%=rs4.getString("msg")%>" > 
                                 
                              <img src="profilegetexplore.jsp?id=<%=rs4.getString("from1")%>" style=" vertical-align: top; display: inline-block;
  width: 60px;
  height: 60px;
  border-radius: 50%;

  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;"  /> 
                                
                             </div>    
                              
                              </td></tr> 
                            <tr><td align=right style="alignment-adjust: right"> </td><td align=right style="alignment-adjust: right">
                             <div class="box4">  <input style=" color:white; font-size: 8px;
   background-color:#03a9f4;padding: 0.5rem 0.5rem; width:15%; hover= background-color:#03a9f4;   
   color: white  ;
  
  
   "  align="right" type="submit" name="m2" value="<%=rs4.getString("time")%>" ></div>
                                </td>   
                          </tr> 
                          
                   <%   }else{
                   %><tr><td align=left><div class="box">
                             <img src="profilegetexplore.jsp?id=<%=rs4.getString("from1")%>" style=" vertical-align: top; display: inline-block;
  width: 60px;
  height: 60px;
  border-radius: 50%;

  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;"  /> 
                                 <input style=" color:white; font-size: 16px;
   background-color:#03a9f4;padding: 0.5rem 0.5rem; width:auto; hover= background-color:#03a9f4;   
   color: white  ;
  
  
   "  align="right" type="submit" name="m2" value="<%=rs4.getString("msg")%>" > 
                             </div>    
                           </td><td align=left>   </td></tr>  
                    <tr><td align=left style="alignment-adjust:left">
                             <div class="box">  <input style=" color:white; font-size: 8px;
   background-color:#03a9f4;padding: 0.5rem 0.5rem; width:15%; hover= background-color:#03a9f4;   
   color: white  ;
  
  
   "  align="right" type="submit" name="m2" value="<%=rs4.getString("time")%>" ></div>
                                </td> <td align=left style="alignment-adjust: left"> </td>  
                          </tr> 
                   
                          <%} %>
                 
                  <% 
              }
                  %> </tfoot> </table>
           
             <%
  }catch(Exception exc) 
              {
        //  out.print("<font color:#1DA1F2>  " +exc.toString() +"</font>");
}

%>
<!--    Sidebar 2 Absolute position, Fixed width<br><br>
  line 1<br><br>
  line 2<br><br>
  line 3<br><br>
  line 4<br><br>
  line 5<br><br>
  line 6<br><br>
  line 7<br><br>
  line 8<br><br>
  line 9<br><br>
  line 10
   line 11<br>
    <br>
    line 12<br>
    <br>
    line 13<br>
    <br>
    line 14<br>
    <br>
    line 15<br>
    <br>
    line 16<br>
    <br>
    line 17<br>
    <br>
    line 18<br>
    <br>
    line 19<br>
    <br>
    line 20
     line 11<br>
     <br>
    line 12<br>
    <br>
    line 13<br>
    <br>
    line 14<br>
    <br>
    line 15<br>
    <br>
    line 16<br>
    <br>
    line 17<br>
    <br>
    line 18<br>
    <br>
    line 19<br>
    <br>
    line 20 line 11<br>
    <br>
    line 12<br>
    <br>
    line 13<br>
    <br>
    line 14<br>
    <br>
    line 15<br>
    <br>
    line 16<br>
    <br>
    line 17<br>
    <br>
    line 18<br>
    <br>
    line 19<br>
    <br>
    line 20
     line 1<br>
     <br>
  -->
  </div><div class="footer">
    <form method="get"> <table>
             <tfoot>
           <tr >      <td>
            
                           <textarea  name="txt" cols="53" rows="1" border="0" style="border: none;border: none;
    overflow: auto;
    outline: none;

    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;

    resize: none; font-size: 18px;"   placeholder="Say Hi!"></textarea>
                    
        </td><td>   <input value="submit" name="txt2" src="download.jpg" width="30" height="30" type="image" alt="submit"/>
            <input type="hidden" name="id" value="<%=(String)request.getParameter("id")%>">
                     </td> 
                 </tr> 
             </tfoot></table></form> 
      
      <%
      if(request.getParameter("txt2.x")!=null){
         
          try{
           Class.forName("com.mysql.jdbc.Driver");
                Connection conn6=null;
          PreparedStatement ps6=null; 
           conn6=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
           
             Connection conn7=null;
          Statement ps7=null; 
           conn7=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
            ps7=conn7.createStatement();
            ResultSet rs7=ps7.executeQuery("select count(*) from message");
            rs7.next(); 
             int n=rs7.getInt(1);
             
            Date date=new Date();
          String sql="insert into message values(?,?,?,?,?)";
          
          ps6=conn6.prepareStatement(sql);
      
          ps6.setInt(1,++n); 
          ps6.setString(2,((String)request.getParameter("id")));
        // ps.setInt(3,2);
          ps6.setString(3,(String)session.getAttribute("username"));
           ps6.setString(4,date.toString());
            ps6.setString(5,((String)request.getParameter("txt")));
       //  ps.setBlob(5,i1);
        
         
          int u=ps6.executeUpdate();
          if(u>0){ 
              response.sendRedirect("message.jsp?id="+(String)request.getParameter("id")) ;
          %>
               <script>  
                  window.open('message.jsp?id=<%=((String)request.getParameter("id"))%>') 


                   
               </script> 
               <%
              }
          }
              
            catch(Exception exc) 
              {
        //  out.print("<font color:#1DA1F2>  " +exc.toString() +"</font>");
}
      }
      %>
  </div>
</div></div>
<!--<div class="footer">Footer (Absolute)</div>-->
</div>
    </body>
</html>
