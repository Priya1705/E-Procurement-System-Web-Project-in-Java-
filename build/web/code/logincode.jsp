<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.DatabaseManager"%>
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    
    DatabaseManager dm=new DatabaseManager();
    String query="select usertype from login where userid='"+username+"' and passwd='"+password+"'";
    ResultSet rs=dm.selectQuery(query);
    if(rs.next()==true)
    {
        String usertype=rs.getString(1);
        if(usertype.equals("vendor"))
        {
           
            session.setAttribute("username", username);
            response.sendRedirect("../userzone/userhome.jsp");
        }
        else if(usertype.equals("admin"))
        {
            session.setAttribute("adminid", username);
            response.sendRedirect("../adminzone/adminhome.jsp");
        }
    }
    else
    {
       out.print("<script>alert('Invalid User'); window.location.href='../Login.jsp';</script>"); 
    }
%>