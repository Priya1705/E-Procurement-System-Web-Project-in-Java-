<%@page import="MyPackage.DatabaseManager"%>
<%
String ten=request.getParameter("ten");
DatabaseManager db=new DatabaseManager();
String q="delete from tendor where id='"+ten+"'";
String msg=(db.executeNonQuery(q)==true)?"Tendor is deleted":"Tendor not deleted";

%>
<script>
    alert('<%=msg%>');
    window.location.href="../uploadtendor.jsp";
    </script>
    