package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; chars et=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write(" <style>\n");
      out.write("            \n");
      out.write("            body {\n");
      out.write("  margin: 0;\n");
      out.write("  padding: 0;\n");
      out.write("  background: url(bgblur.png);\n");
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
      out.write("  padding: 7.5rem;\n");
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
      out.write("\n");
      out.write(".container-login100-form-btn1 {\n");
      out.write("  width: 100%;\n");
      out.write("  display: -webkit-box;\n");
      out.write("  display: -webkit-flex;\n");
      out.write("  display: -moz-box;\n");
      out.write("  display: -ms-flexbox;\n");
      out.write("  display: flex;\n");
      out.write("  flex-wrap: wrap;\n");
      out.write("  justify-content: center;\n");
      out.write(" \n");
      out.write("}\n");
      out.write("\n");
      out.write(".login100-form-btn1 {\n");
      out.write("  display: -webkit-box;\n");
      out.write("  display: -webkit-flex;\n");
      out.write("  display: -moz-box;\n");
      out.write("  display: -ms-flexbox;\n");
      out.write("  display: flex;\n");
      out.write("  justify-content: center;\n");
      out.write("  align-items: center;\n");
      out.write("  padding: 0 20px;\n");
      out.write("  width: 100%;\n");
      out.write("  height: 50px;\n");
      out.write("  border-radius: 3px;\n");
      out.write("  background: #1DA1F2;\n");
      out.write("   border-radius: 12PX;\n");
      out.write("\n");
      out.write("  font-family: Montserrat-Bold;\n");
      out.write("  font-size: 14px;\n");
      out.write("  color: #fff;\n");
      out.write("  line-height: 1.2;\n");
      out.write("  text-transform: uppercase;\n");
      out.write("  letter-spacing: 1px;\n");
      out.write("\n");
      out.write("  -webkit-transition: all 0.4s;\n");
      out.write("  -o-transition: all 0.4s;\n");
      out.write("  -moz-transition: all 0.4s;\n");
      out.write("  transition: all 0.4s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login100-form-btn1:hover {\n");
      out.write("  background: #333333;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("      \n");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body >\n");
      out.write("       \n");
      out.write("        <div class=\"box\">\n");
      out.write("            \n");
      out.write("            <form action=\"check.jsp\" method=\"get\" > \n");
      out.write("           \n");
      out.write("            <h2> <img src=\"logo.jpeg\" width=\"50\" height=\"50\" align=\"center\"></h2>\n");
      out.write("  <h2>Log in to Twitter</h2>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("    <div class=\"inputBox\">\n");
      out.write("      <input type=\"email\" name=\"email\" required  value=\"\">\n");
      out.write("      <label>Email/username</label>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"inputBox\">\n");
      out.write("      <input type=\"password\" name=\"password\" required value=\"\">\n");
      out.write("      <label>password</label>\n");
      out.write("    </div>\n");
      out.write(" \n");
      out.write("   \n");
      out.write("    <div class=\"container-login100-form-btn1\">\n");
      out.write("        <input type=\"submit\" class=\"login100-form-btn1\"  value=\"Log in\">\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("   \n");
      out.write("  </form>\n");
      out.write("            <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"forgetpasswordenteremail.jsp\" style=\"color: #1DA1F2; \">Forgot Password?</a> &nbsp;&nbsp;<a href=\"signup.jsp\" style=\"color: #1DA1F2;\">Sign Up for twitter</a>\n");
      out.write("</div>\n");
      out.write("       \n");
      out.write("      \n");
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
