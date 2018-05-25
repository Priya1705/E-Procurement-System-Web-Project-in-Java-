package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class enquiry_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"css/generalstyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/menu.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script>\n");
      out.write("            \n");
      out.write("            var i=0;\n");
      out.write("            var imglist=[\"2.jpg\",\"3.jpg\",\"4.jpg\",\"5.jpg\"];\n");
      out.write("            \n");
      out.write("            function moveSlider()\n");
      out.write("            {\n");
      out.write("                document.getElementById(\"slide\").src=\"images/\"+imglist[i];\n");
      out.write("                i++;\n");
      out.write("                \n");
      out.write("                if(i==imglist.length)\n");
      out.write("                {\n");
      out.write("                    i=0;\n");
      out.write("                }  \n");
      out.write("                    \n");
      out.write("                window.setTimeout(\"moveSlider()\", 2000);\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            td\n");
      out.write("            {\n");
      out.write("                font-size: 30px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"moveSlider()\">\n");
      out.write("        <form action=\"SaveEnquiry\" method=\"post\">\n");
      out.write("            <div id=\"wrapper\">\n");
      out.write("                \n");
      out.write("                <div id=\"header\" >\n");
      out.write("                    <div id=\"logo\">\n");
      out.write("                        <img src=\"images/1.jpg\" alt=\"\" height=\"150px\" width=\"150px\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"banner\" style=\"height:150px; width: 850px; float: left; background: blue;\">\n");
      out.write("                        <img src=\"images/2.jpg\" alt=\"\" height=\"150px\" width=\"850px\"/>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"menu\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                        <li><a href=\"services.jsp\">Services</a></li>\n");
      out.write("                        <li><a href=\"registration.jsp\">Registration</a></li>\n");
      out.write("                        <li><a href=\"recruitment.jsp\">Recruitment</a></li>\n");
      out.write("                        <li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("                        <li><a href=\"enquiry.jsp\">Enquiry</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"slider\" style=\"border: 1px solid black;height:250px;width: 1000px;background: blue;\">\n");
      out.write("                    <img id=\"slide\" width=\"1000px\" height=\"250px\"/>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"container\">\n");
      out.write("                    <div id=\"left\"></div>\n");
      out.write("                    <div id=\"main\">\n");
      out.write("                        <h1 style=\"text-align: center; color: blue;\">Enquiry Form</h1>\n");
      out.write("                        <table align=\"center\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Your Name</td>\n");
      out.write("                                <td><input type=\"text\" name=\"name\"/></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Gender</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"radio\" name=\"gender\" value=\"Male\"/>Male\n");
      out.write("                                    <input type=\"radio\" name=\"gender\" value=\"Female\"/>Female\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Your Address</td>\n");
      out.write("                                <td><textarea name=\"address\"></textarea></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Contact No.</td>\n");
      out.write("                                <td><input type=\"text\" name=\"contactno\"/></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Email Address</td>\n");
      out.write("                                <td><input type=\"email\" name=\"emailaddress\"/></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Text Message</td>\n");
      out.write("                                <td><textarea name=\"message\"></textarea></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>&nbsp;</td>\n");
      out.write("                                <td><input type=\"submit\" value=\"submit\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"footer\">\n");
      out.write("                    <div id=\"lfooter\"style=\"height:120px;width: 500px;float: left;background: gray;\"></div>\n");
      out.write("                    <div id=\"rfooter\"style=\"height:120px;width: 500px;float: left;background: blue;\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
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