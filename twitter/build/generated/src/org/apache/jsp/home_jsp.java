package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.InputStream;
import javax.servlet.http.Part;
import java.util.Date;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!--<link href=\"//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css\" rel=\"stylesheet\"/>-->\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("        \r\n");
      out.write("        <style>\r\n");
      out.write("         .fileContainer {\r\n");
      out.write("    overflow: hidden;\r\n");
      out.write("    position: relative;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".fileContainer [type=file] {\r\n");
      out.write("    cursor: inherit;\r\n");
      out.write("    display: block;\r\n");
      out.write("    font-size: 999px;\r\n");
      out.write("    filter: alpha(opacity=0);\r\n");
      out.write("    min-height: 100%;\r\n");
      out.write("    min-width: 100%;\r\n");
      out.write("    opacity: 0;\r\n");
      out.write("    position: absolute;\r\n");
      out.write("    right: 0;\r\n");
      out.write("    text-align: right;\r\n");
      out.write("    top: 50;\r\n");
      out.write("    width: 80px;\r\n");
      out.write("    height: 80px;\r\n");
      out.write("}\r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write(".box1 .inputBox {\r\n");
      out.write("  position: relative;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".box1 .inputBox input {\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  padding: 0.625rem 0;\r\n");
      out.write("  font-size: 1rem;\r\n");
      out.write("  color: black;\r\n");
      out.write("  letter-spacing: 0.062rem;\r\n");
      out.write("  margin-bottom: 1.875rem;\r\n");
      out.write("  border:1;\r\n");
      out.write("  border-bottom: 0.065rem solid #1DA1F2;\r\n");
      out.write("  outline:#1DA1F2;\r\n");
      out.write("  background: transparent;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".box1 .inputBox label {\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  top: 0;\r\n");
      out.write("  left: 0;\r\n");
      out.write("  padding: 0.625rem 0;\r\n");
      out.write("  font-size: 1.5rem;\r\n");
      out.write("  color:black;\r\n");
      out.write("  pointer-events:  none;\r\n");
      out.write("  transition: 0.5s;\r\n");
      out.write("  cursor:blink;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".box1 .inputBox input:focus ~ label,\r\n");
      out.write(".box1 .inputBox input:valid ~ label,\r\n");
      out.write(".box1 .inputBox input:not([value=\"\"]) ~ label {\r\n");
      out.write("  top: -2.125rem;\r\n");
      out.write("  left: 0;\r\n");
      out.write("  color: black;\r\n");
      out.write("  font-size: 1.75rem;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".box1 input[type=\"text\"] {\r\n");
      out.write("  border: 1;\r\n");
      out.write("  outline: none;\r\n");
      out.write("  color:black;\r\n");
      out.write("  background-color: lightgrey;\r\n");
      out.write("  padding: 0.5rem 1rem;\r\n");
      out.write("/*  cursor: pointer;*/\r\n");
      out.write("  border-radius:16px;\r\n");
      out.write("  font-size: 1rem;\r\n");
      out.write("  width: 100%;\r\n");
      out.write("/*  font-weight: bolder;*/\r\n");
      out.write("/*  border-color: #1DA1F2;*/\r\n");
      out.write("  \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".box1 input[type=\"text\"]:hover {\r\n");
      out.write("  background-color:lightgrey;\r\n");
      out.write("  color: black;\r\n");
      out.write("  \r\n");
      out.write("}\r\n");
      out.write("            /* Remove unnecessary margins/padding */\r\n");
      out.write("html, body { margin: 0; padding: 0 }\r\n");
      out.write("\r\n");
      out.write(".wrapper {\r\n");
      out.write("  display: grid;\r\n");
      out.write("  /* Header and footer span the entire width, sidebars and content are fixed, with empty space on sides */\r\n");
      out.write("  grid-template-areas:\r\n");
      out.write("    \"header header header header header\"\r\n");
      out.write("    \"empty_left sidebar_1 content sidebar_2 empty_right\"\r\n");
      out.write("    \"footer footer footer footer footer\";\r\n");
      out.write("  /* Only expand middle section vertically (content and sidebars) */\r\n");
      out.write("  grid-template-rows: 0fr 1fr 0fr;\r\n");
      out.write("  /* 100% width, but static widths for content and sidebars */\r\n");
      out.write("  grid-template-columns: 1fr 275px 650px 400px 1fr;\r\n");
      out.write("  /* Force grid to be at least the height of the screen */\r\n");
      out.write("  min-height: 100vh;\r\n");
      out.write("}\r\n");
      out.write(".header {\r\n");
      out.write("  grid-area: header;\r\n");
      out.write("\r\n");
      out.write("  /* Stick header to top of grid */\r\n");
      out.write("  position: sticky;\r\n");
      out.write("  top: 0;\r\n");
      out.write("  /* Ensure header appears on top of content/sidebars */\r\n");
      out.write("  z-index: 1;\r\n");
      out.write("\r\n");
      out.write("  /* General appearance */\r\n");
      out.write("  background-color: white;\r\n");
      out.write("   font-family: sans-serif;\r\n");
      out.write("/*  text-align: center;*/\r\n");
      out.write("  font-size: 1rem;\r\n");
      out.write("  line-height: 1.5;\r\n");
      out.write("  padding: 1rem;\r\n");
      out.write("  border-bottom: 0.065rem solid gray;\r\n");
      out.write("  border-right:  0.065rem solid lightgray;\r\n");
      out.write("  border-left:  0.065rem solid lightgray;\r\n");
      out.write("  border-top:  0.065rem solid lightgray;\r\n");
      out.write("  border-color: lightgrey;\r\n");
      out.write("  border: 1;\r\n");
      out.write("}\r\n");
      out.write("/* Save header height to properly set `padding-top` and `margin-top` for sticky content */\r\n");
      out.write(":root {\r\n");
      out.write("/*  --header-height: calc(1rem * 1.5 + 1rem * 2);*/\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".sidebar-1 {\r\n");
      out.write("  grid-area: sidebar_1;\r\n");
      out.write("}\r\n");
      out.write(".sidebar-2 {\r\n");
      out.write("  grid-area: sidebar_2;\r\n");
      out.write("}\r\n");
      out.write(".sidebar-1,\r\n");
      out.write(".sidebar-2 {\r\n");
      out.write("  display: flex;\r\n");
      out.write("  flex-direction: column;\r\n");
      out.write("  position: sticky;\r\n");
      out.write("  top: 0;\r\n");
      out.write("\r\n");
      out.write("  /* Styling to match reference */\r\n");
      out.write("  background-color: #BC514F;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".content {\r\n");
      out.write("  grid-area: content;\r\n");
      out.write("   border-right:  0.065rem solid lightgray;\r\n");
      out.write("  border-left:  0.065rem solid lightgray;\r\n");
      out.write("  border: 1;\r\n");
      out.write("   border-color: lightgrey;\r\n");
      out.write("  /* General appearance */\r\n");
      out.write("/*  background-color: #99BB5E;*/\r\n");
      out.write("}\r\n");
      out.write(".footer {\r\n");
      out.write("  grid-area: footer;\r\n");
      out.write("   \r\n");
      out.write("  /* Stick footer to bottom of grid */\r\n");
      out.write("  position: sticky;\r\n");
      out.write("  bottom: 0;\r\n");
      out.write("\r\n");
      out.write("  /* General appearance */\r\n");
      out.write("  background-color: #FCFF34;\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  font-size: .8rem;\r\n");
      out.write("  line-height: 1.5;\r\n");
      out.write("  padding: .5rem;\r\n");
      out.write("}\r\n");
      out.write("/* Save footer height to properly set `bottom` and `min-height` for sticky content */\r\n");
      out.write(":root {\r\n");
      out.write("  --footer-height: calc(0rem * 0 + 0rem * 0);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".sticky-spacer {\r\n");
      out.write("  flex-grow: 1;\r\n");
      out.write("}\r\n");
      out.write(".sticky-content {\r\n");
      out.write("  position: sticky;\r\n");
      out.write("  bottom: var(--footer-height);\r\n");
      out.write("  min-height: calc(100vh - var(--footer-height));\r\n");
      out.write("  box-sizing: border-box;\r\n");
      out.write("  \r\n");
      out.write("  --padding: 10px;\r\n");
      out.write("  padding:\r\n");
      out.write("    calc(var(--header-height) + var(--padding))\r\n");
      out.write("    var(--padding)\r\n");
      out.write("    var(--padding);\r\n");
      out.write("  margin-top: calc(0px - var(--header-height));\r\n");
      out.write("}\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write(".box .inputBox {\r\n");
      out.write("  position: relative;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".box .inputBox input {\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  padding: 0.625rem 0;\r\n");
      out.write("  font-size: 1rem;\r\n");
      out.write("  color: black;\r\n");
      out.write("  letter-spacing: 0.062rem;\r\n");
      out.write("  margin-bottom: 1.875rem;\r\n");
      out.write("  border:  none;\r\n");
      out.write("  border-bottom: 0.065rem solid #1DA1F2;\r\n");
      out.write("  outline:#1DA1F2;\r\n");
      out.write("  background: transparent;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".box .inputBox label {\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  top: 0;\r\n");
      out.write("  left: 0;\r\n");
      out.write("  padding: 0.625rem 0;\r\n");
      out.write("  font-size: 1rem;\r\n");
      out.write("  color:#1DA1F2;\r\n");
      out.write("  pointer-events: none;\r\n");
      out.write("  transition: 0.5s;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".box .inputBox input:focus ~ label,\r\n");
      out.write(".box .inputBox input:valid ~ label,\r\n");
      out.write(".box .inputBox input:not([value=\"\"]) ~ label {\r\n");
      out.write("  top: -2.125rem;\r\n");
      out.write("  left: 0;\r\n");
      out.write("  color:  #03a9f4;\r\n");
      out.write("  font-size: 1.75rem;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".box input[type=\"submit\"] {\r\n");
      out.write("  border: none;\r\n");
      out.write("  outline: none;\r\n");
      out.write("  color:#03a9f4;\r\n");
      out.write("  background-color: white;\r\n");
      out.write("  padding: 0.625rem 1.25rem;\r\n");
      out.write("  cursor: pointer;\r\n");
      out.write("  border-radius:14px;\r\n");
      out.write("  font-size: 1rem;\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  font-weight: bolder;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".box input[type=\"submit\"]:hover {\r\n");
      out.write("background-color:#03a9f4;/*   #03a9f4;*/\r\n");
      out.write("  color: white;\r\n");
      out.write("  \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".user {\r\n");
      out.write("  display: inline-block;\r\n");
      out.write("  width: 60px;\r\n");
      out.write("  height: 60px;\r\n");
      out.write("  border-radius: 50%;\r\n");
      out.write("\r\n");
      out.write("  background-repeat: no-repeat;\r\n");
      out.write("  background-position: center center;\r\n");
      out.write("  background-size: cover;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".one {\r\n");
      out.write("  background-image: url('hash.png');\r\n");
      out.write("}\r\n");
      out.write("        </style>\r\n");
      out.write("        <script>\r\n");
      out.write("           function a1(){\r\n");
      out.write("             window.location.href=\"home.jsp\";           }\r\n");
      out.write("             function a2(){\r\n");
      out.write("             window.location.href=\"explore.jsp\";           }\r\n");
      out.write("          function a3(){\r\n");
      out.write("             window.location.href=\"notification.jsp\";           }\r\n");
      out.write("          function a4(){\r\n");
      out.write("             window.location.href=\"message.jsp\";           }\r\n");
      out.write("         function a5(){\r\n");
      out.write("             window.location.href=\"lists.jsp\";           }\r\n");
      out.write("         \r\n");
      out.write("          function a6(){\r\n");
      out.write("             window.location.href=\"profile.jsp\";           }\r\n");
      out.write("         function a7(){\r\n");
      out.write("             window.location.href=\"logout.jsp\";           }\r\n");
      out.write("         \r\n");
      out.write("         \r\n");
      out.write("         \r\n");
      out.write("        </script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("     <div class=\"wrapper\">\r\n");
      out.write("<!--<div class=\"header\">Header (Absolute)</div>-->\r\n");
      out.write("<div class=\"sidebar-1\">\r\n");
      out.write("  <div class=\"sticky-spacer\"></div>\r\n");
      out.write("  <div style=\"background-color:white\" class=\"sticky-content\">\r\n");
      out.write("<!--      &nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;<img src=\"logo.jpeg\" width=\"40\" height=\"40\" align=\"absmiddle\">-->\r\n");
      out.write("      <table align=\"center\" cellpadding=\"3\" cellspacing=\"5\">\r\n");
      out.write("          <tr><td><img src=\"logo.jpeg\" width=\"40\" height=\"40\" align=\"absmiddle\"></td>   <td> <div class=\"box\">   </div></td></tr>\r\n");
      out.write("          <tr ><td colspan=\"2\"  align=\"center\"><img src=\"logo.jpeg\" style=\"visibility:hidden;\" width=\"0\" height=\"0\" align=\"absmiddle\"></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr><td><img src=\"home.png\" width=\"30\" height=\"30\"></td>   <td> <div class=\"box\">   <input  align=\"right\" type=\"submit\" name=\"Next\" onClick=\"a1()\" value=\"Home\"> </div></td></tr>\r\n");
      out.write("          <tr><td><img src=\"hash.png\" width=\"30\" height=\"30\"></td><td> <div class=\"box\">   <input  align=\"right\" type=\"submit\" name=\"Next\" value=\"Explore\" onClick=\"a2()\" >  </div></td></tr>\r\n");
      out.write("          <tr><td><img src=\"noti.png\" width=\"30\" height=\"30\"></td><td> <div class=\"box\">     <input  align=\"right\" type=\"submit\" name=\"Next\" value=\"Notification\" onClick=\"a3()\" > </div></td></tr>\r\n");
      out.write("           <tr><td><img src=\"msg.png\" width=\"30\" height=\"30\"></td><td> <div class=\"box\">  <input  align=\"right\" type=\"submit\" name=\"Next\" value=\"Message\" onClick=\"a4()\" >  </div></td></tr>\r\n");
      out.write("           <tr><td><img src=\"bookmark.png\" width=\"30\" height=\"30\"></td><td> <div class=\"box\">  <input  align=\"right\" type=\"submit\" name=\"Next\" value=\"Bookmarks\">  </div></td></tr>\r\n");
      out.write("           <tr><td><img src=\"list.png\" width=\"30\" height=\"30\"></td><td> <div class=\"box\">  <input  align=\"right\" type=\"submit\" name=\"Next\" value=\"Lists\" onClick=\"a5()\" >  </div></td></tr>\r\n");
      out.write("           <tr><td><img src=\"more.png\" width=\"30\" height=\"30\"></td><td> <div class=\"box\">   <input  align=\"right\" type=\"submit\" name=\"Next\" value=\"Profile\" onClick=\"a6()\" ></div></td></tr>\r\n");
      out.write("            <tr><td><img src=\"more.png\" width=\"30\" height=\"30\"></td><td> <div class=\"box\">   <input  align=\"right\" type=\"submit\" name=\"Next\" value=\"Logout\" onClick=\"a7()\" > </div></td></tr>\r\n");
      out.write("<!--            <tr><td><td></td></tr>-->\r\n");
      out.write("      </table>\r\n");
      out.write("       <div class=\"box\">&nbsp;&nbsp;&nbsp;&nbsp;   <input style=\" color:white;\r\n");
      out.write("  background-color:#03a9f4;padding: 0.5rem 0.5rem; width:80%; hover= background-color:#03a9f4;   \r\n");
      out.write("  color: white  ;\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write(" \"  align=\"center\" type=\"submit\" name=\"t11\" value=\"Tweet\"> </div>\r\n");
      out.write("      \r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"content \">\r\n");
      out.write("  <div class=\"sticky-spacer\"></div>\r\n");
      out.write("  <div class=\"sticky-content\">\r\n");
      out.write("      <div class=\"header\"><b>Home</b></div>\r\n");
      out.write("      <form method=\"post\"  enctype=\"multipart/form-data\" >\r\n");
      out.write("      <table  border=\"0\" bordercolor=\"#999999\" style=\" border-bottom: 0.565rem solid  ; border-color: whitesmoke\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td width=\"65\" >\r\n");
      out.write("<!--              <div class=\"user one\"></div>-->\r\n");
      out.write("              <img src=\"profileget.jsp\" style=\" display: inline-block;\r\n");
      out.write("  width: 60px;\r\n");
      out.write("  height: 60px;\r\n");
      out.write("  border-radius: 50%;\r\n");
      out.write("\r\n");
      out.write("  background-repeat: no-repeat;\r\n");
      out.write("  background-position: center center;\r\n");
      out.write("  background-size: cover;\"/> \r\n");
      out.write("          </td>\r\n");
      out.write("\t\t  <td width=\"1014\">\r\n");
      out.write("                      <textarea  name=\"t1\" cols=\"55\" rows=\"4\" maxlength=\"240\" border=\"0\" style=\"border: none;border: none;\r\n");
      out.write("    overflow: auto;\r\n");
      out.write("    outline: none;\r\n");
      out.write("\r\n");
      out.write("    -webkit-box-shadow: none;\r\n");
      out.write("    -moz-box-shadow: none;\r\n");
      out.write("    box-shadow: none;\r\n");
      out.write("\r\n");
      out.write("    resize: none; font-size: 18px;\"   placeholder=\" What's Happenning?\"></textarea>\r\n");
      out.write("\t\t  </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("\t\t <tr>\r\n");
      out.write("          <td >\r\n");
      out.write("          \r\n");
      out.write("          </td>\r\n");
      out.write("\t\t  <td>\r\n");
      out.write("                      <div class=\"box\"> \r\n");
      out.write("                           &nbsp;&nbsp;\r\n");
      out.write("                           \r\n");
      out.write("                           <label class=\"fileContainer\">\r\n");
      out.write("         <img src=\"gallery.png\" width=\"30\" height=\"30\">\r\n");
      out.write("    <input name=\"tweetphoto\" type=\"file\"/>\r\n");
      out.write("</label>\r\n");
      out.write("<!--                           <img src=\"gallery.png\" width=\"30\" height=\"30\"> -->\r\n");
      out.write("<!--                           <label for=\"upload\">\r\n");
      out.write("      <span class=\"glyphicon glyphicon-folder-open\" aria-hidden=\"true\"></span>\r\n");
      out.write("      <input type=\"file\" id=\"upload\" style=\"display:none\">\r\n");
      out.write("</label>-->\r\n");
      out.write("                           &nbsp;&nbsp;\r\n");
      out.write("                     <img src=\"smile.png\" width=\"30\" height=\"30\">\r\n");
      out.write(" &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write(" &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("                         <input style=\" color:white;\r\n");
      out.write("  background-color:#03a9f4;padding: 0.5rem 0.5rem; width:15%; hover= background-color:#03a9f4;   \r\n");
      out.write("  color: white  ;\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write(" \"  align=\"right\" type=\"submit\" name=\"t2\" value=\"Tweet\"> </div>\r\n");
      out.write("                  </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table></form>\r\n");
      out.write("      <div id=\"abhi\">\r\n");
      out.write("     ");
    try{
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
          String sql="insert into tweets (userid,tweetid,tweet,time,video) values(?,?,?,?,?)";
           //  out.print(b);
          ps=conn.prepareStatement(sql);
      
          ps.setString(1,a);
          ps.setInt(2,++n);
        // ps.setInt(3,2);
          ps.setString(3,b);
           ps.setString(4,d.toString());
            ps.setBlob(5,ii);
       //  ps.setBlob(5,i1);
        
         
          int u=ps.executeUpdate();
     
          if(u>0){}}
                           
            
              
      out.write("\r\n");
      out.write("               <script>  \r\n");
      out.write("//                   window.open('home.jsp', '_self');  \r\n");
      out.write("document.getElementById(\"abhi\").innerHTML=b;\r\n");
      out.write("\r\n");
      out.write("                   \r\n");
      out.write("               </script> \r\n");
      out.write("               ");

                 Connection conn2=null;
          Statement ps2=null; 
           conn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/twitterdb","root","");
           ps2=conn2.createStatement();
           ResultSet rs1=ps2.executeQuery("select * from tweets order by time desc"); 
           while(rs1.next()){
           
      out.write("\r\n");
      out.write("                <table  border=\"0\" bordercolor=\"#999999\" style=\" border-bottom: 0.095rem solid gray ; border-color: lightgray\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td width=\"65\" valign=\"top\" >\r\n");
      out.write("<!--              <div class=\"user one\"></div>-->\r\n");
      out.write("              <img src=\"profilegetexplore.jsp?id=");
      out.print(rs1.getString("userid"));
      out.write("\" style=\" vertical-align: top; display: inline-block;\r\n");
      out.write("  width: 60px;\r\n");
      out.write("  height: 60px;\r\n");
      out.write("  border-radius: 50%;\r\n");
      out.write("\r\n");
      out.write("  background-repeat: no-repeat;\r\n");
      out.write("  background-position: center center;\r\n");
      out.write("  background-size: cover;\"  />          </td >\r\n");
      out.write("          \r\n");
      out.write("\t\t  <td width=\"1014\">\r\n");
      out.write("                     ");
      out.print(rs1.getString("tweet") );
      out.write("<br><br>\r\n");
      out.write("                      ");
 if(rs1.getString("video").equals("")){}else{ 
      out.write("\r\n");
      out.write("                      <img src=\"tweetphotos.jsp?id=");
      out.print(rs1.getInt("tweetid"));
      out.write("\" width=\"580\" height=\"350\"> ");
 } 
      out.write("\r\n");
      out.write("                      \r\n");
      out.write("                    \r\n");
      out.write("\t\t  </td>\r\n");
      out.write("        </tr> </table>\r\n");
      out.write("        ");

                      }  
        
       }catch(Exception exc) 
              {
        //  out.print("<font color:#1DA1F2>  " +exc.toString() +"</font>");
}
  
  
     
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("  </div> <!--  // yaha bich wala page khatam hua hai--> \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" </div>\r\n");
      out.write(" <div class=\"sidebar-2\">\r\n");
      out.write("    <div class=\"sticky-spacer\"></div>\r\n");
      out.write("    <div class=\"sticky-content\" style=\" background-color: white;\">\r\n");
      out.write("       <div class=\"header\"><div class=\"box1\"><img src=\"search.png\" ><input type=\"text\" name=\"Next1\"\r\n");
      out.write("                                                     style=\" color:black;padding: 0.4rem 0rem;\r\n");
      out.write("   background-color:whitesmoke; width:80%  ; height:60 \" align=\"left\" placeholder=\"  Search Twitter\" > </div>\r\n");
      out.write("       \r\n");
      out.write("     </div>\r\n");
      out.write("<!--     Sidebar 2 Absolute position, Fixed width<br><br>\r\n");
      out.write("   line 1<br><br>\r\n");
      out.write("   line 2<br><br>\r\n");
      out.write("   line 3<br><br>\r\n");
      out.write("   line 4<br><br>\r\n");
      out.write("   line 5<br><br>\r\n");
      out.write("   line 6<br><br>\r\n");
      out.write("    line 7<br><br>\r\n");
      out.write("   line 8<br><br>\r\n");
      out.write("    line 9<br><br>\r\n");
      out.write("   line 10-->\r\n");
  try{
  
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
           if( !rs1.getString("username").equals((String)session.getAttribute("username"))){  
      out.write("\r\n");
      out.write("                <table  border=\"0\" bordercolor=\"#999999\" style=\" border-bottom: 0.095rem solid gray ; border-color: lightgray\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td width=\"65\" valign=\"top\" >\r\n");
      out.write("<!--              <div class=\"user one\"></div>-->\r\n");
      out.write("              <img src=\"profilegetexplore.jsp?id=");
      out.print(rs1.getString("username"));
      out.write("\" style=\" vertical-align: top; display: inline-block;\r\n");
      out.write("  width: 60px;\r\n");
      out.write("  height: 60px;\r\n");
      out.write("  border-radius: 50%;\r\n");
      out.write("\r\n");
      out.write("  background-repeat: no-repeat;\r\n");
      out.write("  background-position: center center;\r\n");
      out.write("  background-size: cover;\"  />          </td >\r\n");
      out.write("          \r\n");
      out.write("\t\t  <td width=\"480\">\r\n");
      out.write("                     ");
      out.print(rs1.getString("name") );
      out.write("<br><br>\r\n");
      out.write("                     \r\n");
      out.write("                    \r\n");
      out.write("\t\t  </td>\r\n");
      out.write("              ");
    String sql="select * from followertable where following='" +(String)session.getAttribute("username")+ "' and follower='" +rs1.getString("username")+ "'";
                   ResultSet rs=ps.executeQuery(sql);
                   if(rs.next()){
                     
      out.write("\r\n");
      out.write("                      <td> <div class=\"box\">\r\n");
      out.write("                      <input style=\" color:white;\r\n");
      out.write("   background-color:#03a9f4;padding: 0.5rem 0.5rem; width:120%; hover= background-color:#03a9f4;   \r\n");
      out.write("   color: white  ;\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("   \"  align=\"right\" type=\"submit\" name=\"t3\" value=\"Unfollow\" onclick= \"window.location=('unfollow.jsp?user=");
      out.print(rs.getInt("followerid"));
      out.write("')\">  </div>\r\n");
      out.write("                   </td>\r\n");
      out.write("                     \r\n");
      out.write("                     ");

                   }else{
                   
                
      out.write("  <td> <div class=\"box\">\r\n");
      out.write("                      <input style=\" color:white;\r\n");
      out.write("   background-color:#03a9f4;padding: 0.5rem 0.5rem; width:120%; hover= background-color:#03a9f4;   \r\n");
      out.write("   color: white  ;\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("    \"  align=\"right\" type=\"submit\" name=\"t3\" value=\"follow\" onclick= \"window.location=('follow.jsp?id=");
      out.print(rs1.getString("username"));
      out.write("&user=");
      out.print((String)session.getAttribute("username"));
      out.write("')\">  </div>\r\n");
      out.write("                   </td>\r\n");
      out.write("    ");
  } 
      out.write(" </tr> </table>\r\n");
      out.write("        ");

                                   } }  
  
    }catch(Exception exc) 
              {
        //  out.print("<font color:#1DA1F2>  " +exc.toString() +"</font>");
} 
      out.write("\r\n");
      out.write("   </div>\r\n");
      out.write(" </div></div>\r\n");
      out.write(" <!--<div class=\"footer\">Footer (Absolute)</div>-->\r\n");
      out.write("</div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
