<%@page import="MyPackage.DatabaseManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<% 
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
                out.println("<script>alert('Registration Is Successfull'); window.location.href='../Registration.jsp';z</script>");
            }
            else
            {
                out.println("<script>alert('Registration is done but login details are not saved'); window.location.href='../Registration.jsp';</script>");
            }
    }
    else
    {
        out.println("<script>alert('Database Error'); window.location.href='../Registration.jsp';</script>");
    }
    }
    else
    {
        out.println("<script>alert('Invalid captcha code'); window.location.href='../Registration.jsp';</script>");
    }

%>

