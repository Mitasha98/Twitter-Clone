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
    //    try{
    //   String user=   (String)request.getParameter("id");
   //     int a=Integer.parseInt(user); 
    //    Connection conn=null;
   //     Class.forName("com.mysql.jdbc.Driver");
     //   conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");    
     //   Statement st=conn.createStatement();
    //    ResultSet rs=st.executeQuery("select video from tweets where tweetid="+a);
    //    rs.next(); 
    //    String s=rs.getString(1);
     //   byte rb[]=new byte[s.length()];
       // InputStream i=rs.getBinaryStream(1);
  //      i.read(rb,0,s.length());
    //    response.reset();
      //  response.setContentType("image/jpg");
        //response.getOutputStream().write(rb,0, s.length());
        //response.getOutputStream().flush();
    //                   }catch(Exception exc)
   //             {
  //                  
               // }                               
   //     %>
        
          
       <%
            String c =   "jdbc:mysql://localhost:3306/twitterdb";
            if(request.getParameter("id")!=null && request.getParameter("id")!="")
            {
                int id =  Integer.parseInt(request.getParameter("id"));
                String filename = "image"+id+".jpg";
                Connection con=null;
        	try
                {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con=DriverManager.getConnection(c,"root","");
                    Statement st1=con.createStatement();
                    String strQuery = "select video from tweets where tweetid="+id;
                    ResultSet rs1 = st1.executeQuery(strQuery);
                    String imgLen="";
                    if(rs1.next())
                    {
                        imgLen = rs1.getString(1);	
                        int len = imgLen.length();//123456
                        byte rb[] = new byte[len];//to create location in the array
                	InputStream readImg = rs1.getBinaryStream(1);
                        int index=readImg.read(rb, 0, len);
                        st1.close();
                         response.reset();
                        response.setContentType("image/jpg");
                        response.setHeader("Content-disposition","attachment; filename=" +filename);
                        response.getOutputStream().write(rb,0,len);
                        response.getOutputStream().flush();
                    }
                }
                               
                catch (Exception e)
                {
                    e.printStackTrace();
                }
          }
       %>
    </body>
</html>
