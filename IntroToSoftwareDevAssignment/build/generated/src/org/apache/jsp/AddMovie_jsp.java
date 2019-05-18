package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AddMovie_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Add Movie</h1>\n");
      out.write("        <form action=\"AddMovieAction.jsp\" method=\"post\">\n");
      out.write("            <table>                \n");
      out.write("                <tr><td><label>Title</label></td>\n");
      out.write("                    <td><input name=\"title\" type=\"text\" placeholder=\"Enter Title\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td><label>Genre</label></td>\n");
      out.write("                    <td><div class=\"custom-select\">\n");
      out.write("                            <select name=\"categories\">\n");
      out.write("                                <option value=\"Action\">Action</option>\n");
      out.write("                                <option value=\"Adventure\">Adventure</option>\n");
      out.write("                                <option value=\"Comedy\">Comedy</option>\n");
      out.write("                                <option value=\"Drama\">Drama</option>\n");
      out.write("                                <option value=\"Fantasy\">Fantasy</option>\n");
      out.write("                                <option value=\"Romance\">Romance</option>\n");
      out.write("                                <option value=\"Scifi\">SciFi</option>\n");
      out.write("                                <option value=\"Thriller\">Thriller</option>\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                    </td>\n");
      out.write("                </tr><br>\n");
      out.write("                <tr><td><label>Release Date</label></td>\n");
      out.write("                    <td><input name=\"date\" type=\"text\" placeholder=\"Release Date\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td><label>Director</label></td>\n");
      out.write("                    <td><input name=\"director\" type=\"text\" placeholder=\"Director's Name\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td><label>Sympnosis</label></td>\n");
      out.write("                    <td><textarea name=\"sympnosis\" placeholder=\"Enter Brief Summary\" style=\"height: 100px\"></textarea></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td><label>Price</label></td>\n");
      out.write("                    <td><input name=\"price\" type=\"text\" placeholder=\"Enter Price\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td><label>Copies</label></td>\n");
      out.write("                    <td><input name=\"copies\" type=\"text\" placeholder=\"Enter Number of Copies\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td></td>\n");
      out.write("                    <td><input class=\"button\" type=\"submit\" value=\"Post\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>   \n");
      out.write("        </form>        \n");
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
