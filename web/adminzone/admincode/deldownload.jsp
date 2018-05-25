<%@page import="MyPackage.DatabaseManager"%>
<%
String down=request.getParameter("down");
DatabaseManager db=new DatabaseManager();
String q="delete from tendor where tid='"+down+"'";
String msg=(db.executeNonQuery(q)==true)?"Download is deleted":"Download is not deleted";

%>
<script>
    alert('<%=msg%>');
    window.location.href="../uploadtendor.jsp";
    </script>
    