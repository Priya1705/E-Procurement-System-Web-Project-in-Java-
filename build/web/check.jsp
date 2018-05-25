
<%@page import="MyPackage.show"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
             show.email("varunmishra106@gmail.com","check", "Good Evening");
             out.print("ok");
          %>
    </body>
</html>
