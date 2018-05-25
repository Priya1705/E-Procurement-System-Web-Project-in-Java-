package org.apache.jsp.code;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import MyPackage.DatabaseManager;
import java.util.Date;
import java.text.SimpleDateFormat;

public final class registrationcode_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
 
    String capcode=request.getParameter("capcode");
    String captcha=request.getParameter("captcha");
    if(capcode.equals(captcha))
    {
    //process the request
    String company_name=request.getParameter("companyname");
    String nature_of_work =request.getParameter("natureofwork");
    String address =request.getParameter("address");
    String chairperson_name =request.getParameter("chairpersonname");
    String tin_no =request.getParameter("tinno");
    String pan_no =request.getParameter("pinno");
    String company_type =request.getParameter("companytype");
    String establishment_year =request.getParameter("estyear");
    String projects_completed =request.getParameter("projects");
    String concern_person =request.getParameter("concernperson");
    String concern_person_contactno =request.getParameter("contactno");
    String concern_person_emailaddress =request.getParameter("concernemail");
    String concern_person_designation =request.getParameter("concerndesignation");
    String url=request.getParameter("url");
    String company_emailaddress =request.getParameter("companyemail");
    String username =request.getParameter("username");
    String passwd =request.getParameter("password");
    
    SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
    String registrationdt=df.format(new Date());
    
    String usertype="vendor";
    String status="no";
    
    DatabaseManager dm= new DatabaseManager();
    String query1="insert into vendor_registration values('"+company_name +"','"+nature_of_work +"','"+address +"',"
            + "'"+chairperson_name +"','"+tin_no +"','"+pan_no +"','"+company_type +"','"+establishment_year +"',"
            + "'"+projects_completed +"','"+concern_person+"','"+concern_person_contactno+"','"+concern_person_emailaddress+"',"
            + "'"+concern_person_designation+"','"+url+"','"+company_emailaddress +"','"+username +"','"+passwd +"','"+registrationdt+"')";
    
    String query2="insert into login values('"+username+"','"+passwd+"','"+usertype+"','"+status+"')";

    if(dm.executeNonQuery(query1)==true)
    {
            if(dm.executeNonQuery(query2)==true)
            {
                out.println("<script>alert('Registration Is Successfull')</script>");
            }
            else
            {
                out.println("<script>alert('Registration is done but login details are not saved')</script>");
            }
    }
    else
    {
        out.println("<script>alert('Database Error')</script>");
    }
    }
    else
    {
        out.println("<script>alert('Invalid captcha code'); window.location.href='../Registration.jsp';</script>");
    }

      out.write('\n');
      out.write('\n');
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
