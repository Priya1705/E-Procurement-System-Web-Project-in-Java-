<%-- 
    Document   : userhome
    Created on : 24 Jul, 2017, 6:30:19 PM
    Author     : priya_000
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.DatabaseManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/userstyle.css" rel="stylesheet" type="text/css"/>
        <link href="../css/menu.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body  style="background-color: #f7e6ff;">
        <%
                if(session.getAttribute("username")==""  || session.getAttribute("username")==null)
                {
                    response.sendRedirect("../Login.jsp");
                }
                else
                {
        %>
        <form action="usercode/reviewcode.jsp" method="post">
              <div id="wrapper">
                <div id="header">
                    <div id="logo">
                        <img src="images/logo.png" alt="" width="150" height="150"/>
                    </div>
                    <div id="sitetitle" style="background-color: #00b33c;">
                        E-PROCUREMENT SYSTEM
                    </div>
                </div>
                <div id="contain1">
                    <div id="date"  style="background-color: #9292b9; font-size: 30px;">Current Date:
                        <%
                            SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
                            String dt=df.format(new Date());
                            out.println(dt);
                        %>
                    </div>
                    <div id="name"  style="background-color: #9292b9; font-size: 30px;">Hello,
                        <%
                            DatabaseManager dm=new DatabaseManager();
                            String username=session.getAttribute("username").toString();
                            String query="select concern_person from vendor_registration where username='"+username+"'";
                            ResultSet rs=dm.selectQuery(query);
                            if(rs.next()==true)
                            {
                                out.println(rs.getString(1));
                            }    
                        %>
                    </div>
                </div>
                    <div id="menu" style="height: 65px;">
                        <ul>
                            <li><a href="userhome.jsp">Home</a></li>
                            <li><a href="review.jsp">Review</a></li>
                            <li><a href="complain.jsp">Complain</a></li>
                            <li><a href="feedback.jsp">Feedback</a></li>
                            <li><a href="changepassword.jsp">Change Password</a></li>
                            <li><a href="logout.jsp">Logout</a></li>
                        </ul>
                    </div>
                    <div id="contain2"   style="background-color: #f7e6ff;">
                        
                        <div style="float:left;">
                            <br><br><br>
                        <h2>Submit Your Review</h2>
                        <table>
                            <tr>
                                <td>Rating</td>
                                <td>
                                    <select name="rate">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Review Text</td>
                                <td><textarea name="reviewtext" required="true"></textarea></td>
                            </tr>
                             <tr>
                                <td></td>
                                <td><input type="submit" value="submit"></td>
                            </tr>   
                        </table>
                        </div>
                        <div style="float:left;">
                            <img src="../images/new.png" alt="" style="align:right; height: 600px; width: 750px;"/>
                        </div>
                      
                        
                    </div>
                <div id="footer" style="background-color:black;">
                    <div class="subfooter">

                        Copyright &COPY; to E-Procurement for GGL  
                    </div>
                    <div class="subfooter">
                        Developed By: PRIYA YADAV
                    </div>
                </div>
            </div>    
        </form>
        <%}%>
    </body>
</html>
