 <%@page import="MyPackage.DatabaseManager"%>
<%
 
 String newpass=request.getParameter("newpass");
 String confirmnewpass=request.getParameter("confirmnew");
 DatabaseManager dm=new DatabaseManager();
 String query="update login set passwd='"+newpass+"' where userid='"+session.getAttribute("username") +"'";
 if(newpass.equals(confirmnewpass))
 {
     String msg=(dm.executeNonQuery(query)==true)?"Your Password Is Updated":"Your Password Is Not Update";
     out.print("<script>alert('"+msg+"');window.location.href='../../Login.jsp';</script>");
 }
 else
 {
     out.print("<script>alert('Your Password Is Not Cofirmed');window.location.href='../../Login.jsp';</script>");
 }
%>