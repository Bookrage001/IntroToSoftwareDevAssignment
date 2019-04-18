package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/Modules/search.jspf");
    _jspx_dependants.add("/Modules/navbar.jspf");
    _jspx_dependants.add("/Modules/refignSearch.jspf");
    _jspx_dependants.add("/Modules/movies.jspf");
  }

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
 String msFilePath = application.getRealPath("WEB-INF");
      out.write("\r\n");
      out.write("<link  rel=\"stylesheet\" href=\"css/stylesheet.css\">\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.3.1.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Home Page</title>\r\n");
      out.write("    <datalist id=\"Genres\">\r\n");
      out.write("        <option value=\"Action\">\r\n");
      out.write("        <option value=\"Sci-Fi\">\r\n");
      out.write("        <option value=\"Horror\">\r\n");
      out.write("        <option value=\"Comedy\">\r\n");
      out.write("    </datalist>\r\n");
      out.write("</head>\r\n");
      out.write("<script>\r\n");
      out.write("$(document).ready(function () {\r\n");
      out.write("    $('.order tr').click(function (event) {\r\n");
      out.write("        if (event.target.type !== 'checkbox') {\r\n");
      out.write("                $(':checkbox', this).trigger('click');\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("        $(\"input[type='checkbox']\").change(function (e) {\r\n");
      out.write("            if ($(this).is(\":checked\")) {\r\n");
      out.write("                $(this).closest('tr').addClass(\"highlight_row\");\r\n");
      out.write("            } else {\r\n");
      out.write("                $(this).closest('tr').removeClass(\"highlight_row\");\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("    });\r\n");
      out.write("</script>\r\n");
      out.write("<body align=\"center\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("    <header align=\"left\">\r\n");
      out.write("    <div id=\"Logoposition\">\r\n");
      out.write("        <img src=\"Images/RaiMovieLogoBlue.png\" id=\"Logo\">\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    <div id=\"Search\">\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div>\r\n");
      out.write("    <center>\r\n");
      out.write("        <form action=\"index.jsp\" method=\"Post\" class=\"MovieSearch\">\r\n");
      out.write("    <table>\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>\r\n");
      out.write("                <label for=\"Title\">Title\r\n");
      out.write("                    <input name=\"Title\" type=\"text\" value=\"\" autocomplete=\"false\" placeholder=\"Search for Movies...\">\r\n");
      out.write("                    </td>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <label for=\"Genre\">Genre\r\n");
      out.write("                            <select name=\"Genre\">\r\n");
      out.write("                                <option value=\"\" name=\"\"></option>\r\n");
      out.write("                                <option value=\"Action\" name=\"Action\">Action</option>\r\n");
      out.write("                                <option value=\"Sci-Fi\" name=\"Sci-Fi\">Sci-Fi</option>\r\n");
      out.write("                                <option value=\"Horror\" name=\"Horror\">Horror</option>\r\n");
      out.write("                                <option value=\"Comedy\" name=\"Comedy\">Comedy</option>\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </label>\r\n");
      out.write("                    </td>\r\n");
      out.write("            </td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <label for=\"YearS\">Start Year\r\n");
      out.write("                    <input name=\"YearS\" type=\"number\"  value=\"\" autocomplete=\"false\" min=\"1900\" max=\"2020\" maxlength=\"4\" minlength=\"4\">\r\n");
      out.write("                </label>\r\n");
      out.write("            </td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <label for=\"YearF\">End\r\n");
      out.write("                    <input name=\"YearF\" type=\"number\" value=\"\" autocomplete=\"false\" min=\"1900\" max=\"2020\" maxlength=\"4\" minlength=\"4\"> <!-- TODO Use todays Date -->\r\n");
      out.write("                </label>\r\n");
      out.write("            </td>\r\n");
      out.write("            <td>\r\n");
      out.write("                <button>Search</button>\r\n");
      out.write("            </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("</form>\r\n");
      out.write("</center>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    </header>\r\n");
      out.write("    </header>\r\n");
      out.write("\r\n");
      out.write("<content>\r\n");
      out.write("    <div class =\"container\">\r\n");
      out.write("        ");
      out.write("<!-- any content can be specified here e.g.: -->\r\n");
      out.write("\r\n");

//    User loggedInUser = (User) session.getAttribute("user");
//    if (loggedInUser != null) {
    if (true) {

      out.write("\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/stylesheet.css\"/>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div align=\"right\" class=\"loginStatus\">Logged in as: \r\n");
      out.write("    ");
      out.write(" User Name<br>\r\n");
      out.write("    </div>\r\n");
      out.write("<div class=\"nav\">\r\n");
      out.write("    <a href=\"index.jsp\"> Home</a> \r\n");
      out.write("    <a href=\"bestsellers.jsp\"> Best Sellers </a> \r\n");
      out.write("    <a href=\"newreleases.jsp\"> New Releases </a> \r\n");
      out.write("    <div class=\"nav-right\">\r\n");
      out.write("    <a href=\"account.jsp\" style=\"border-left: 1px solid black\">My Account</a>\r\n");
      out.write("    <a href=\"logout.jsp\">Logout</a>\r\n");
      out.write("    <a href=\"checkout.jsp\" ><img src=\"Images/Cart.png\" height=\"15\" width=\"15\"> Cart </a> \r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
 } else {
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div align=\"center\"><a href=\"index.jsp\">Index Page</a> | <a href=\"checkout.jsp\">Checkout Page</a> | <a href=\"register.jsp\">Register</a> | <a href=\"login.jsp\">Login</a></div>\r\n");
      out.write("\r\n");
 }
      out.write("\r\n");
      out.write("        <div id=\"collection\">\r\n");
      out.write("            <div id=\"refine\">\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"refinesearch\">\r\n");
      out.write("    <h1>Refine:</h1>\r\n");
      out.write("    <h3>\r\n");
      out.write("        Price:\r\n");
      out.write("    </h3>\r\n");
      out.write("    <li>\r\n");
      out.write("        All Prices\r\n");
      out.write("    </li>\r\n");
      out.write("    <li>\r\n");
      out.write("        $0-$20\r\n");
      out.write("    </li>\r\n");
      out.write("    <li>\r\n");
      out.write("        $20-$40\r\n");
      out.write("    </li>\r\n");
      out.write("    <li>\r\n");
      out.write("        $40-$60\r\n");
      out.write("    </li>\r\n");
      out.write("    <li>\r\n");
      out.write("        Over $60\r\n");
      out.write("    </li>\r\n");
      out.write("</div>\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div id=\"movies\">\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("<div> \r\n");
      out.write("    <div class=\"movie-area\">\r\n");
      out.write("        <div class=\"columns\" name=\"PacificRim\">\r\n");
      out.write("            <img src=\"Images/posters/greatest movie of all time.jpg\" class=\"movieimg\">\r\n");
      out.write("            <div caption align=\"center\">\r\n");
      out.write("                Pacific Rim\r\n");
      out.write("                <div class=\"price\">\r\n");
      out.write("                    $35\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"Moviebtncontainer\">\r\n");
      out.write("                <button class=\"MovieAddbtn\">\r\n");
      out.write("                    <img src=\"Images/Cart.png\">\r\n");
      out.write("                </button>\r\n");
      out.write("                <button class=\"MovieDetailsbtn\">More Details</button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"columns\">\r\n");
      out.write("            <img src=\"Images/posters/infinitywar.jpg\" class=\"movieimg\">\r\n");
      out.write("            <div caption align=\"center\">\r\n");
      out.write("                Avengers: Infinity War\r\n");
      out.write("                <div class=\"price\">\r\n");
      out.write("                    $35\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"Moviebtncontainer\">\r\n");
      out.write("                <button class=\"MovieAddbtn\">\r\n");
      out.write("                    <img src=\"Images/Cart.png\">\r\n");
      out.write("                </button>\r\n");
      out.write("                <button class=\"MovieDetailsbtn\">More Details</button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"columns\">\r\n");
      out.write("            <img src=\"Images/posters/interstellar.jpg\" class=\"movieimg\">\r\n");
      out.write("            <div caption align=\"center\">\r\n");
      out.write("                Interstellar\r\n");
      out.write("                <div class=\"price\">\r\n");
      out.write("                    $35\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"Moviebtncontainer\">\r\n");
      out.write("                <button class=\"MovieAddbtn\">\r\n");
      out.write("                    <img src=\"Images/Cart.png\">\r\n");
      out.write("                </button>\r\n");
      out.write("                <button class=\"MovieDetailsbtn\">More Details</button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"columns\">\r\n");
      out.write("            <img src=\"Images/posters/pulpfiction.jpg\" class=\"movieimg\">\r\n");
      out.write("            <div caption align=\"center\">\r\n");
      out.write("                Pulp Fiction\r\n");
      out.write("                <div class=\"price\">\r\n");
      out.write("                    $35\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"Moviebtncontainer\">\r\n");
      out.write("                <button class=\"MovieAddbtn\">\r\n");
      out.write("                    <img src=\"Images/Cart.png\">\r\n");
      out.write("                </button>\r\n");
      out.write("                <button class=\"MovieDetailsbtn\">More Details</button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"columns\">\r\n");
      out.write("            <img src=\"Images/posters/tropicthunder.jpg\" class=\"movieimg\">\r\n");
      out.write("            <div caption align=\"center\">\r\n");
      out.write("                Tropic Thunder\r\n");
      out.write("                <div class=\"price\">\r\n");
      out.write("                    $35\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"Moviebtncontainer\">\r\n");
      out.write("                <button class=\"MovieAddbtn\">\r\n");
      out.write("                    <img src=\"Images/Cart.png\">\r\n");
      out.write("                </button>\r\n");
      out.write("                <button class=\"MovieDetailsbtn\">More Details</button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"columns\">\r\n");
      out.write("            <img src=\"Images/posters/jarjar.jpg\" class=\"movieimg\">\r\n");
      out.write("            <div caption align=\"center\">\r\n");
      out.write("                Star Wars: Episode 1\r\n");
      out.write("                <div class=\"price\">\r\n");
      out.write("                    $35\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"Moviebtncontainer\">\r\n");
      out.write("                <button class=\"MovieAddbtn\">\r\n");
      out.write("                    <img src=\"Images/Cart.png\">\r\n");
      out.write("                </button>\r\n");
      out.write("                <button class=\"MovieDetailsbtn\">More Details</button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</content>\r\n");
      out.write("</body>\r\n");
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
