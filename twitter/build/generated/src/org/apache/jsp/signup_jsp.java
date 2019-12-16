package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write(" <style>\n");
      out.write("            \n");
      out.write("            body {\n");
      out.write("  margin: 0;\n");
      out.write("  padding: 0;\n");
      out.write("  background: url(bgblur.png);\n");
      out.write("/*background-color: #1DA1F2;*/\n");
      out.write("  background-size: cover;\n");
      out.write("  font-family: sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".box {\n");
      out.write("  position: absolute;\n");
      out.write("  top: 50%;\n");
      out.write("  left: 50%;\n");
      out.write("  transform: translate(-50%, -50%);\n");
      out.write("  width: 38rem;\n");
      out.write("  padding: 8.5rem;\n");
      out.write("  box-sizing: border-box;\n");
      out.write("  background:white;\n");
      out.write("  border-radius: 12px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".box h2 {\n");
      out.write("  margin: 0 0 1.875rem;\n");
      out.write("  padding: 0;\n");
      out.write("  color: black;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".box .inputBox {\n");
      out.write("  position: relative;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".box .inputBox input {\n");
      out.write("  width: 100%;\n");
      out.write("  padding: 0.625rem 0;\n");
      out.write("  font-size: 1rem;\n");
      out.write("  color: black;\n");
      out.write("  letter-spacing: 0.062rem;\n");
      out.write("  margin-bottom: 1.875rem;\n");
      out.write("  border:  none;\n");
      out.write("  border-bottom: 0.065rem solid #1DA1F2;\n");
      out.write("  outline:#1DA1F2;\n");
      out.write("  background: transparent;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".box .inputBox label {\n");
      out.write("  position: absolute;\n");
      out.write("  top: 0;\n");
      out.write("  left: 0;\n");
      out.write("  padding: 0.625rem 0;\n");
      out.write("  font-size: 1rem;\n");
      out.write("  color:#1DA1F2;\n");
      out.write("  pointer-events: none;\n");
      out.write("  transition: 0.5s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".box .inputBox input:focus ~ label,\n");
      out.write(".box .inputBox input:valid ~ label,\n");
      out.write(".box .inputBox input:not([value=\"\"]) ~ label {\n");
      out.write("  top: -2.125rem;\n");
      out.write("  left: 0;\n");
      out.write("  color: #03a9f4;\n");
      out.write("  font-size: 0.75rem;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".box input[type=\"submit\"] {\n");
      out.write("  border: none;\n");
      out.write("  outline: none;\n");
      out.write("  color: #fff;\n");
      out.write("  background-color: #03a9f4;\n");
      out.write("  padding: 0.625rem 1.25rem;\n");
      out.write("  cursor: pointer;\n");
      out.write("  border-radius:12px;\n");
      out.write("  font-size: 1rem;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".box input[type=\"submit\"]:hover {\n");
      out.write("  background-color:black;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("            function aaa(){\n");
      out.write("             a=(Math.ceil(Math.random()*10)+'');\n");
      out.write("   b=(String)(Math.ceil(Math.random()*10)+'');\n");
      out.write("  c=(String)(Math.ceil(Math.random()*10)+'');\n");
      out.write("   d=(String)(Math.ceil(Math.random()*10)+'');\n");
      out.write("   e=(String)(Math.ceil(Math.random()*10)+'');\n");
      out.write("  f=(String)(Math.ceil(Math.random()*10)+'');\n");
      out.write("   code=a+\"\"+b+\"\"+c+\"\"+d+\"\"+e+\"\"+f;\n");
      out.write("   document.forms[0].c.value=code;      }\n");
      out.write("       function fun1(){\n");
      out.write("           document.forms[1].action=\"verification.jsp\";\n");
      out.write("           document.forms[1].submit();\n");
      out.write("           }\n");
      out.write("        </script>\n");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body >\n");
      out.write("       \n");
      out.write("        <div class=\"box\">\n");
      out.write("            \n");
      out.write("            <form onsubmit=\"aaa()\"  method=\"post\"> \n");
      out.write("                \n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("       \n");
      out.write("          <input align=\"right\" type=\"submit\" name=\"Next\" value=\"Next\">\n");
      out.write("            <h2> <img src=\"logo.jpeg\" width=\"50\" height=\"50\" align=\"center\"></h2>\n");
      out.write("  <h2>Create your account</h2>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("    <div class=\"inputBox\">\n");
      out.write("      <input type=\"text\" name=\"name\" required  value=\"\">\n");
      out.write("      <label>Name</label>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"inputBox\">\n");
      out.write("      <input type=\"email\" name=\"email\" required value=\"\">\n");
      out.write("      <label>Email</label>\n");
      out.write("    </div>\n");
      out.write("   <input type=\"hidden\"  name=\"c\">\n");
      out.write("  </form>\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("       \n");
      out.write("         ");

         if(request.getParameter("Next")!=null)
                         {
          
 // char a=(Math.ceil(Math.random()*10)+"").charAt(0);
  //String b=(String)(Math.ceil(Math.random()*10)+"");
 //String c=(String)(Math.ceil(Math.random()*10)+"");
  //String d=(String)(Math.ceil(Math.random()*10)+"");
  //String e=(String)(Math.ceil(Math.random()*10)+"");
 //String f=(String)(Math.ceil(Math.random()*10)+"");
  //String code=a+""+b+""+c+""+d+""+e+""+f;
  
  //
  String code=(String)request.getParameter("c");
  sent.sentcode.send((String)request.getParameter("email"),code);
  String name=(String)request.getParameter("name");
  //session.setAttribute("email",(String)request.getParameter("email"));
  //session.setAttribute("name",(String)request.getParameter("name"));
  
 //response.sendRedirect( "verification.jsp"); 
         
      out.write("<form method=\"get\">\n");
      out.write("          \n");
      out.write("   <input type=\"hidden\"   name=\"name\" value=\"");
      out.print(name);
      out.write("\">\n");
      out.write("    <input type=\"hidden\"  name=\"email\" value=\"");
      out.print((String)request.getParameter("email"));
      out.write("\">\n");
      out.write("    <input type=\"hidden\"  name=\"c\" value=\"");
      out.print(code);
      out.write("\"> \n");
      out.write("    <script>  fun1(); </script>>\n");
      out.write("           \n");
      out.write("          </form>\n");
      out.write("     ");

   }
  
      out.write("\n");
      out.write("  \n");
      out.write("    \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
