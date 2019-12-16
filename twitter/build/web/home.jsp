<%-- 
    Document   : testing1
    Created on : Oct 5, 2019, 10:42:54 AM
    Author     : Mitasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.InputStream" %>
<%@page import=" javax.servlet.http.Part"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<!--<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet"/>-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
         .fileContainer {
    overflow: hidden;
    position: relative;
}

.fileContainer [type=file] {
    cursor: inherit;
    display: block;
    font-size: 999px;
    filter: alpha(opacity=0);
    min-height: 100%;
    min-width: 100%;
    opacity: 0;
    position: absolute;
    right: 0;
    text-align: right;
    top: 50;
    width: 30px;
    height: 30px;
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
  grid-template-columns: 1fr 275px 650px 400px 1fr;
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
  background-color: #BC514F;
}

.content {
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
  bottom: 0;

  /* General appearance */
  background-color: #FCFF34;
  text-align: center;
  font-size: .8rem;
  line-height: 1.5;
  padding: .5rem;
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
  border-radius:14px;
  font-size: 1rem;
  width: 100%;
  font-weight: bolder;
}

.box input[type="submit"]:hover {
background-color:#03a9f4;/*   #03a9f4;*/
  color: white;
  
}

.user {
  display: inline-block;
  width: 60px;
  height: 60px;
  border-radius: 50%;

  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
}

.one {
  background-image: url('hash.png');
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
             window.location.href="lists.jsp";           }
         
          function a6(){
             window.location.href="profile.jsp";           }
         function a7(){
             window.location.href="logout.jsp";           }
         
         
         
        </script>
    </head>
    <body>
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
          <tr><td><img src="hash.png" width="30" height="30"></td><td> <div class="box">   <input  align="right" type="submit" name="Next" value="Explore" onClick="a2()" >  </div></td></tr>
          <tr><td><img src="noti.png" width="30" height="30"></td><td> <div class="box">     <input  align="right" type="submit" name="Next" value="Notification" onClick="a3()" > </div></td></tr>
           <tr><td><img src="msg.png" width="30" height="30"></td><td> <div class="box">  <input  align="right" type="submit" name="Next" value="Message" onClick="a4()" >  </div></td></tr>
           <tr><td><img src="bookmark.png" width="30" height="30"></td><td> <div class="box">  <input  align="right" type="submit" name="Next" value="Bookmarks">  </div></td></tr>
           <tr><td><img src="list.png" width="30" height="30"></td><td> <div class="box">  <input  align="right" type="submit" name="Next" value="Lists" onClick="a5()" >  </div></td></tr>
           <tr><td><img src="more.png" width="30" height="30"></td><td> <div class="box">   <input  align="right" type="submit" name="Next" value="Profile" onClick="a6()" ></div></td></tr>
            <tr><td><img src="more.png" width="30" height="30"></td><td> <div class="box">   <input  align="right" type="submit" name="Next" value="Logout" onClick="a7()" > </div></td></tr>
<!--            <tr><td><td></td></tr>-->
      </table>
       <div class="box">&nbsp;&nbsp;&nbsp;&nbsp;   <input style=" color:white;
  background-color:#03a9f4;padding: 0.5rem 0.5rem; width:80%; hover= background-color:#03a9f4;   
  color: white  ;
  
  
 "  align="center" type="submit" name="t11" value="Tweet"> </div>
      
    </div>
</div>
<div class="content ">
  <div class="sticky-spacer"></div>
  <div class="sticky-content">
      <div class="header"><b>Home</b></div>
      <form method="post"  enctype="multipart/form-data" >
      <table  border="0" bordercolor="#999999" style=" border-bottom: 0.565rem solid  ; border-color: whitesmoke">
        <tr>
          <td width="65" >
<!--              <div class="user one"></div>-->
              <img src="profileget.jsp" style=" display: inline-block;
  width: 60px;
  height: 60px;
  border-radius: 50%;

  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;"/> 
          </td>
		  <td width="1014">
                      <textarea  name="t1" cols="55" rows="4" maxlength="240" border="0" style="border: none;border: none;
    overflow: auto;
    outline: none;

    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;

    resize: none; font-size: 18px;"   placeholder=" What's Happenning?"></textarea>
		  </td>
        </tr>
		 <tr>
          <td >
          
          </td>
		  <td>
                      <div class="box"> 
                           &nbsp;&nbsp;
                           
                           <label class="fileContainer">
         <img src="gallery.png" width="30" height="30">
    <input name="tweetphoto" type="file"/>
</label>
<!--                           <img src="gallery.png" width="30" height="30"> -->
<!--                           <label for="upload">
      <span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
      <input type="file" id="upload" style="display:none">
</label>-->
                           &nbsp;&nbsp;
                     <img src="smile.png" width="30" height="30">
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <input style=" color:white;
  background-color:#03a9f4;padding: 0.5rem 0.5rem; width:15%; hover= background-color:#03a9f4;   
  color: white  ;
  
  
 "  align="right" type="submit" name="t2" value="Tweet"> </div>
                  </td>
        </tr>
      </table></form>
      <div id="abhi">
     <%    try{
     if(request.getParameter("t2")!=null)
             {
       
     
               Class.forName("com.mysql.jdbc.Driver");
          Connection conn=null;
          PreparedStatement ps=null;
          
        
          conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
         
           Connection conn1=null;
          Statement ps1=null;
          conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
         
             ps1=conn1.createStatement();
          ResultSet rs=ps1.executeQuery("select count(*) from tweets");
         rs.next();
         int n=rs.getInt(1);  
        //  out.print(n);  
          ps1.close(); rs.close();
            Part pp=request.getPart("tweetphoto");
          InputStream ii=pp.getInputStream();
          
           
           String a= (String)session.getAttribute("username");
          // out.print(a);
            String b=request.getParameter("t1");
          Date d=new Date();
          String sql="insert into tweets (userid,tweetid,tweet,time,video,likes) values(?,?,?,?,?,?)";
           //  out.print(b);
          ps=conn.prepareStatement(sql);
      
          ps.setString(1,a);
          ps.setInt(2,++n);
        // ps.setInt(3,2);
          ps.setString(3,b);
           ps.setString(4,d.toString());
            ps.setBlob(5,ii);
         ps.setInt(6,0);
        
         
          int u=ps.executeUpdate();
     
          if(u>0){}}
                           
            
              %>
               <script>  
//                   window.open('home.jsp', '_self');  
document.getElementById("abhi").innerHTML=b;

                   
               </script> 
               <%
                 Connection conn2=null;
          Statement ps2=null; 
           conn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
           ps2=conn2.createStatement();
           ResultSet rs1=ps2.executeQuery("select * from tweets order by time desc"); 
           while(rs1.next()){
           %>
                <table  border="0" bordercolor="#999999" style=" border-bottom: 0.095rem solid gray ; border-color: lightgray">
        <tr>
          <td width="65" valign="top" >
<!--              <div class="user one"></div>-->
              <img src="profilegetexplore.jsp?id=<%=rs1.getString("userid")%>" style=" vertical-align: top; display: inline-block;
  width: 60px;
  height: 60px;
  border-radius: 50%;

  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;"  />          </td >
          
		  <td width="1014">
                     <%=rs1.getString("tweet") %><br><br>
                      <% if(rs1.getString("video").equals("")){}else{ %>
                      <img src="tweetphotos.jsp?id=<%=rs1.getInt("tweetid")%>" width="580" height="350"> <% } 
                      if(rs1.getInt("likes")>0){ %> <%=rs1.getInt("likes") %> <% } 
                      %>
                      <form >
                      
                      <input type="hidden" name="tweetid" value=" <%=rs1.getInt("tweetid")  %>"/>
                       <input type="hidden" name="totallikes" value=" <%=rs1.getInt("likes") %>"/>
                      <input type="hidden" name="likinguser" value=" <%=(String)session.getAttribute("username") %>"/>
                      <input  alt="submit" type="image" value="submit"  name="likes1" src="like.png" width="50" height="30"/>
                      </form>
                    
		  </td>
        </tr> </table>
        <%
                      }  
        
       }catch(Exception exc) 
              {
        //  out.print("<font color:#1DA1F2>  " +exc.toString() +"</font>");
}
  
  
     %>
      <%    try{
     if(request.getParameter("likes1.x").equals("")){}else
             { %>
               <script>  
//                   window.open('home.jsp', '_self');  
                alert("yo");
     
               </script> 
               <%
        int zf=Integer.parseInt(request.getParameter("totallikes"));
      out.print(zf);
               Class.forName("com.mysql.jdbc.Driver");
          Connection conn11=null;
          PreparedStatement ps11=null;
          
        
          conn11=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
           String sql="update tweets set likes=? where tweetid=?";
           
          ps11=conn11.prepareStatement(sql);
     
          ps11.setInt(1,++zf);
         ps11.setInt(2,Integer.parseInt(request.getParameter("tweetid")));
         
         
          int u=ps11.executeUpdate();
                   }}catch(Exception exc){}
         %> 
      </div>
  </div> <!--  // yaha bich wala page khatam hua hai--> 


 </div>
 <div class="sidebar-2">
    <div class="sticky-spacer"></div>
    <div class="sticky-content" style=" background-color: white;">
       <div class="header"><div class="box1"><img src="search.png" ><input type="text" name="Next1"
                                                     style=" color:black;padding: 0.4rem 0rem;
   background-color:whitesmoke; width:80%  ; height:60 " align="left" placeholder="  Search Twitter" > </div>
       
     </div>
<!--     Sidebar 2 Absolute position, Fixed width<br><br>
   line 1<br><br>
   line 2<br><br>
   line 3<br><br>
   line 4<br><br>
   line 5<br><br>
   line 6<br><br>
    line 7<br><br>
   line 8<br><br>
    line 9<br><br>
   line 10-->
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
                     <%=rs1.getString("name") %><br><br>
                     
                    
		  </td>
              <%    String sql="select * from followertable where following='" +(String)session.getAttribute("username")+ "' and follower='" +rs1.getString("username")+ "'";
                   ResultSet rs=ps.executeQuery(sql);
                   if(rs.next()){
                     %>
                      <td> <div class="box">
                      <input style=" color:white;
   background-color:#03a9f4;padding: 0.5rem 0.5rem; width:120%; hover= background-color:#03a9f4;   
   color: white  ;
  
  
   "  align="right" type="submit" name="t3" value="Unfollow" onclick= "window.location=('unfollow.jsp?user=<%=rs.getInt("followerid")%>')">  </div>
                   </td>
                     
                     <%
                   }else{
                   
                %>  <td> <div class="box">
                      <input style=" color:white;
   background-color:#03a9f4;padding: 0.5rem 0.5rem; width:120%; hover= background-color:#03a9f4;   
   color: white  ;
  
  
    "  align="right" type="submit" name="t3" value="follow" onclick= "window.location=('follow.jsp?id=<%=rs1.getString("username")%>&user=<%=(String)session.getAttribute("username")%>')">  </div>
                   </td>
    <%  } %> </tr> </table>
        <%
                                   } }  
  
    }catch(Exception exc) 
              {
        //  out.print("<font color:#1DA1F2>  " +exc.toString() +"</font>");
} %>
   </div>
 </div></div>
 <!--<div class="footer">Footer (Absolute)</div>-->
</div>
    </body>
</html>
