package org.apache.jsp.adminzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminhome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Admin Home</title>\n");
      out.write("        <link href=\"admincss/adminstyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("        <form>\n");
      out.write("            <div id=\"wrapper\">\n");
      out.write("                \n");
      out.write("                <div id=\"header\">\n");
      out.write("                    <div id=\"logo\"></div>\n");
      out.write("                    <div id=\"sitetitle\"></div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"menu\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"adminhome.jsp\">Home</a></li>\n");
      out.write("                        <li title=\"Upload Tendor\"> <a href=\"uploadtendor.jsp\">Upload Tendor</a></li>\n");
      out.write("                        <li title=\"Feedback Management\"><a href=\"feedbackmanagement.jsp\">Feedback Management</a></li>\n");
      out.write("                        <li><a href=\"complainmanagement.jsp\">Complain Management</a></li>\n");
      out.write("                        <li><a href=\"reviewmanagement.jsp\">Review Management</a></li>\n");
      out.write("                        <li><a href=\"enquirymanagement.jsp\">Enquiry Management</a></li>\n");
      out.write("                        <li><a href=\"changepassword.jsp\">Change Password</a></li>\n");
      out.write("                        <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"contain2\">\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"footer\">\n");
      out.write("                    \n");
      out.write("                    <div class=\"subfooter\">\n");
      out.write("                        Copyright &copy; to green gas limited\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"subfooter\">\n");
      out.write("                        Developed by: PRIYA YADAV\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("        \n");
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
