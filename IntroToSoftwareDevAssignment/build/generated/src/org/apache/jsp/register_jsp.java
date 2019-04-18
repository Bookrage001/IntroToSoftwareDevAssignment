package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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
      out.write("<!DOCTYPE html>\n");
      out.write("<link href=\"Design/stylesheet.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Register</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div style=\"margin-top:5%\"></div>\n");
      out.write("        <div id=\"Logoposition\">\n");
      out.write("            <img src=\"Images/RaiMovieLogoBlue.png\" class=\"SigninLogo\">\n");
      out.write("        </div>\n");
      out.write("        <div>\n");
      out.write("            <form>\n");
      out.write("                <h1>Registration</h1>\n");
      out.write("                <table align=\"center\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            Username: <input type=\"text\" name=\"username\">\n");
      out.write("                        </td>\n");
      out.write("                        <td>Email: <input type=\"text\" name=\"Email\"> </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <table align=\"center\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                Password: <input type=\"text\" name=\"Password\">\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                Confirm password: <input type=\"text\" name=\"ConfirmPassword\">\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("\n");
      out.write("                </table>\n");
      out.write("                <table align=\"center\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>First Name: <input type=\"text\" name=\"FirstName\"> Last Name: <input type=\"text\" name=\"LastName\"> </td>\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("                <table align=\"center\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Address: <input type=\"text\" name=\"Address\"> </td>\n");
      out.write("                        <td>Post Code:<input type=\"text\" name=\"PostCode\" style=\"width:50px\"> \n");
      out.write("                        <td>Suburb:<input type=\"text\" name=\"username\" style=\"width: 60px\"> </td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            </form>\n");
      out.write("            <button class=\"Registerbtn\">Next</button>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <p>Already have a username/password?</p>\n");
      out.write("        <p> <font color=blue>Return to login page</p>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
