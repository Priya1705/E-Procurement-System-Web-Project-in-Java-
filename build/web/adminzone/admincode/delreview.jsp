<%@page import="MyPackage.DatabaseManager"%>
<%
String riv=request.getParameter("riv");
DatabaseManager db=new DatabaseManager();
String q="delete from review where id='"+riv+"'";
String msg=(db.executeNonQuery(q)==true)?"Review is deleted":"Review not deleted";

%>
<script>
    alert('<%=msg%>');
    window.location.href="../reviewmanagement.jsp";
    </script>
    