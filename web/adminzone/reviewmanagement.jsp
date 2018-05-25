
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.DatabaseManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Zone</title>
        <link href="admincss/adminstyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body  style="background-color: #f7e6ff;">
         <%
                if(session.getAttribute("adminid")=="" || session.getAttribute("adminid")==null)
                    response.sendRedirect("../Login.jsp");
                
                    else{%>
        <form>
           
            <div id="wrapper">
                <div id="header"> 
                   <div id="logo" style="background-color: white;">
                        <img src="../images/logo.png" alt="" height="150px;" width="150px;"/>
                    </div>
                    <div id="sitetitle">Green Gas Limited</div>
                </div>
                 
                
           <div id="menu"  style="background-color: #f7e6ff;"> 
                <ul>
                     <li><a href="adminhome.jsp">Home</a></li>
                     <li><a href="feedbackmanagement.jsp">Feedback Management</a></li>
                     <li><a href="complainmanagement.jsp">Complain Management</a></li>
                     <li><a href="reviewmanagement.jsp">Review Management</a></li>
                     <li><a href="enquirymanagement.jsp">Enquiry Management</a></li>
                     <li><a href="changepassword.jsp">Change Password</a></li>
                     <li><a href="logout.jsp">Logout</a></li>
                 </ul>
	    </div>  
            
            <div id="contain2">
                <center>
                    <h2 style="color: navy;font-weight: bold">Review Management</h2>
                    <br><br>
                        <table border="1" style="width: 700px">
                            <tr>
                                <th>S.NO.</th>
                                <th>Name</th>
                                <th>Contact NO</th>
                                <th>Email</th>
                                <th>Review</th> 
                                <th>Review Text</th>
                                <th>Delete</th>
                            </tr>
                            <%
                            int n=1;
                            DatabaseManager db=new DatabaseManager();
                            String q="select * from review";
                            db.selectQuery(q);
                            ResultSet rs = db.selectQuery(q);
                            while(rs.next())
                            {
                            %>
                            <tr>
                                <td><%=n%></td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(4)%></td>
                                <td><%=rs.getString(5)%></td>
                                <td><%=rs.getString(6)%></td>
                                <td><a href="admincode/delreview.jsp?riv=<%=rs.getInt(1)%>"/>Delete</td>
                            </tr>
                            
                            
                            
                            <% } %>
                        </table>
                    </center>
                </div>
                <div id="footer"  style="margin-top: 55px;">
                    
                    <div class="subfooter">
                        Copyright &copy; to green gas limited
                    </div>
                    <div class="subfooter">
                       Developed by: PRIYA YADAV
                    </div>
                    
                </div>
            </div>
                   
                        </form>
                     <% }%>
                    
    </body>
</html>

