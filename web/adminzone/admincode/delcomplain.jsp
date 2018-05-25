<%@page import="MyPackage.DatabaseManager"%>
<%
String com=request.getParameter("com");
DatabaseManager db=new DatabaseManager();
String q="delete from complain where id='"+com+"'";
String msg=(db.executeNonQuery(q)==true)?"Complain is deleted":"Complain not deleted";

%>
<script>
    alert('<%=msg%>');
    window.location.href="../complainmanagement.jsp";
    </script>
    