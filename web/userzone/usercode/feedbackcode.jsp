<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.DatabaseManager"%>
<%
    ResultSet rs=null;
    String concern_person="", concern_person_emailaddress="";
    long concern_person_contactno=0;
    String feedbacktext=request.getParameter("feedbacktext");
    
    DatabaseManager dm=new DatabaseManager();
    rs=dm.selectQuery("select nvl(max(id),0)+1 from feedback"); 
    rs.next();
    int id=rs.getInt(1);
    
    String username=session.getAttribute("username").toString();
    
    String query1="select concern_person, concern_person_contactno,concern_person_emailaddress from vendor_registration where username='"+username+"'";
    rs=dm.selectQuery(query1);
    
    if(rs.next()==true)
    {
        concern_person=rs.getString(1);
        concern_person_contactno=rs.getLong(2);
        concern_person_emailaddress=rs.getString(3);
    }
    SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
    String feedbackdt=df.format(new Date());
    
    String query2="insert into feedback values("+id+",'"+concern_person+"','"+concern_person_contactno+"','"+concern_person_emailaddress+"','"+feedbacktext+"','"+feedbackdt+"')";
    if(dm.executeNonQuery(query2)==true)
    {
        out.println("<script>alert('Feedback is submitted'); window.location.href='../feedback.jsp';</script>");
    }
    else
    {
        out.println("<script>alert('Databse Error'); window.location.href='../feedback.jsp';</script>");
    }
    
%>