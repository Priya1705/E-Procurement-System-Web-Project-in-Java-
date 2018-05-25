package org.apache.jsp.userzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import MyPackage.DatabaseManager;
import java.util.Date;
import java.text.SimpleDateFormat;

public final class userhome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"css/userstyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../css/menu.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

                if(session.getAttribute("username")==""  || session.getAttribute("username")==null)
                {
                    response.sendRedirect("../Login.jsp");
                }
                else
                {
        
      out.write("\n");
      out.write("        <form>\n");
      out.write("              <div id=\"wrapper\">\n");
      out.write("                <div id=\"header\">\n");
      out.write("                    <div id=\"logo\">\n");
      out.write("                        <img src=\"images/logo.png\" alt=\"\" width=\"150\" height=\"150\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"sitetitle\">\n");
      out.write("                        E-PROCUREMENT SYSTEM\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"contain1\">\n");
      out.write("                    <div id=\"date\">Current Date:\n");
      out.write("                        ");

                            SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
                            String dt=df.format(new Date());
                            out.println(dt);
                        
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"name\">Hello,\n");
      out.write("                        ");

                            DatabaseManager dm=new DatabaseManager();
                            String username=session.getAttribute("username").toString();
                            String query="select concern_person from vendor_registration where username='"+username+"'";
                            ResultSet rs=dm.selectQuery(query);
                            if(rs.next()==true)
                            {
                                out.println(rs.getString(1));
                            }    
                        
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                    <div id=\"menu\">\n");
      out.write("                        <ul>\n");
      out.write("                        <li><a href=\"userhome.jsp\">Home</a></li>\n");
      out.write("                        <li><a href=\"review.jsp\">Review</a></li>\n");
      out.write("                        <li><a href=\"complain.jsp\">Complain</a></li>\n");
      out.write("                        <li><a href=\"feedback.jsp\">Feedback</a></li>\n");
      out.write("                        <li><a href=\"changepassword.jsp\">Change Password</a></li>\n");
      out.write("                        <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                <div id=\"contain2\"></div>\n");
      out.write("                <div id=\"footer\">\n");
      out.write("                    <div class=\"subfooter\">\n");
      out.write("                        Copyright &COPY; to E-Procurement for GGL\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"subfooter\">\n");
      out.write("                        Developed By: PRIYA YADAV\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>    \n");
      out.write("        </form>\n");
      out.write("        ");
}
      out.write("\n");
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
