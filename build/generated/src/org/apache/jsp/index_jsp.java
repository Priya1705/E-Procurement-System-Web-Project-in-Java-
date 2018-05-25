package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            var imglist=[\"1.JPG\",\"2.JPG\",\"3.JPG\",\"4.jpg\",\"5.jpg\",\"6.jpg\",\"7.JPG\",\"8.jpg\"];\n");
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
      out.write("    </head>\n");
      out.write("    <body onload=\"moveSlider()\">\n");
      out.write("        <form>\n");
      out.write("            <div id=\"wrapper\">\n");
      out.write("                \n");
      out.write("                <div id=\"header\" style=\" border-radius: 20px;\" >\n");
      out.write("                    <div id=\"logo\" >\n");
      out.write("                        <img src=\"images/logo.png\" alt=\"\" height=\"150px\" width=\"150px\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"banner\" style=\"height:150px; width: 850px; float: left; background: blue;\">\n");
      out.write("                        <img src=\"images/banner.jpg\" alt=\"\" height=\"150px\" width=\"850px\"/>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"menu\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                        <li><a href=\"services.jsp\">Services</a></li>\n");
      out.write("                        <li><a href=\"Registration.jsp\">Registration</a></li>\n");
      out.write("                        <li><a href=\"recruitment.jsp\">Recruitment</a></li>\n");
      out.write("                        <li><a href=\"Login.jsp\">Login</a></li>\n");
      out.write("                        <li><a href=\"enquiry.jsp\">Enquiry</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"slider\" style=\"height:250px;width: 1000px;background: blue;\">\n");
      out.write("                    <img id=\"slide\" width=\"1000px\" height=\"250px\"/>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"container\">\n");
      out.write("                    <div id=\"left\">\n");
      out.write("                        <div id=\"up\">\n");
      out.write("                            <div class=\"info\">Green Gas Limited(GGL)</div>\n");
      out.write("                                Green Gas Limited (GGL) is a joint venture of Gail (india) Limited [Gail]\n");
      out.write("                                 and Indian oil Corporation Limited [IOCL].<br/><p>It has beenincorporated for the \n");
      out.write("                                 implementation of city Gas projects for supply of piped natural Gas (PNG) to\n");
      out.write("                                 domenstic,commercial and industrial.</p>\n");
      out.write("                        </div>\n");
      out.write("                        <div id=\"down\">\n");
      out.write("                            <div class=\"info\"><marquee behavior=\"alternate\">News Updates</marquee></div>\n");
      out.write("                            <marquee onmouseover=\"stop();\" scrollamount=\"3\" direction=\"up\" onmouseout=\"start();\"> <strong><i>1.</i></strong> Now You can Register online for Domenstic PNG connection.<br/><br/>\n");
      out.write("                            <strong><i>2.</i></strong> Commercial CNG sale has been commenced at Parkash Auto Faizabad road.<br/><br/>\n");
      out.write("                            <strong><i>3.</i></strong> Upcoming CNG station :<br/><span style=\"color:khaki \"><br/>&nbsp;&nbsp;Lucknow</span>\n");
      out.write("                            <span  style=\"color:khaki \"><br/>&nbsp;&nbsp;Jhansi</span><span  style=\"color:khaki \"><br/>&nbsp;&nbsp;Gorakhpur</span></marquee>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"main\"></div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"footer\">\n");
      out.write("                    <div id=\"lfooter\"style=\"height:120px;width: 500px;float: left;\"></div>\n");
      out.write("                    <div id=\"rfooter\"style=\"height:120px;width: 500px;float: left;\"></div>\n");
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
