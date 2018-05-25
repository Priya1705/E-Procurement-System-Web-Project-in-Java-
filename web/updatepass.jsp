
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>z
        <h1>Forget Password</h1>
        <form action="code/updatepasscode.jsp" method="post">
            <table>
              
            <tr>
                <td>enter new password</td>
                <td> <input type="text" name="newpass"</td>
            </tr>
            <tr>
                <td>confirm new password</td>
                <td><input type="text" name="confirmnewpass"</td>
            </tr>
            <tr>
            <td></td>
            <td><input type="submit" value="submit"/></td>
            </tr>
            </table>
            
        </form>
    </body>
</html>
