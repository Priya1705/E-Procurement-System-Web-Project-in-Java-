<%@page import="MyPackage.DatabaseManager"%>
<%
String enq=request.getParameter("enq");
DatabaseManager db=new DatabaseManager();
String q="delete from enquiry where id='"+enq+"'";
String msg=(db.executeNonQuery(q)==true)?"Enquiry is deleted":"Enquiry not deleted";

%>
<script>
    alert('<%=msg%>');
    window.location.href="../enquirymanagement.jsp";
    </script>
    