<%-- 
    Document   : logout
    Created on : 25 Jul, 2017, 6:59:31 PM
    Author     : priya_000
--%>
<%
    session.invalidate();
    //response.sendRedirect("../Login.jsp");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function clear()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../Login.jsp'",500);
                
            }
        </script>
    </head>
    <body onload="clear()">
    </body>
</html>
