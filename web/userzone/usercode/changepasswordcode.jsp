<%@page import="MyPackage.DatabaseManager"%>
<%
    String oldpass=request.getParameter("oldpass");
    String newpass=request.getParameter("newpass");
    String confirmpass=request.getParameter("confirmpass");
    
    DatabaseManager dm=new DatabaseManager();
    
    String query="update login set passwd='"+newpass+"' where userid='"+session.getAttribute("username")+"'and passwd='"+oldpass+"'";
    
    if(newpass.equals(confirmpass))
    {
        String msg=(dm.executeNonQuery(query)==true)?"Your password is updated":"Your password is not updated";
        out.println("<script>alert('"+msg+"'); window.location.href='../changepassword.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Your password is not confirmed'); window.location.href='../changepassword.jsp';</script>");
    }
    
%>
