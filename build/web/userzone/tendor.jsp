
<%@page import="MyPackage.DatabaseManager"%>
<%@page import="java.sql.ResultSet"%>
<%
                if(session.getAttribute("adminid")=="" || session.getAttribute("adminid")==null)
                {
                    response.sendRedirect("../login.jsp");
                }
                else
                {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
    </head>
    <body>
        <div id="wrapper">
            
             <div id="header"> 
                <div id="logo">
                    <img src="images/logo.jpg" width="150" height="150"/>
                </div>
                <div id="sitetitle">
                    Green Gas Limited
                </div>
            </div>
                 
            <div id="menu"> 
                <ul>
                    <li><a href="adminhome.jsp">Home</a></li>
                    <li title="Upload Tendor"> <a href="uploadtendor.jsp">Upload Tendor</a></li>
                    <li title="Feedback Management"><a href="feedbackmanagement.jsp">Feedback Management</a></li>
                    <li><a href="complainmanagement.jsp">Complain Management</a></li>
                    <li><a href="reviewmanagement.jsp">Review Management</a></li>
                    <li><a href="enquirymanagement.jsp">Enquiry Management</a></li>
                    <li><a href="changepassword.jsp">Change Password</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
	   </div>  
            
            <div id="contain2">
                <form action="../uploadcode" method="post" enctype="multipart/form-data">     
                    <center>
                        <h2> Upload Product</h2>
                        <br><br>
                        <table>
                            <tr>
                                <td>Tendor Name</td>
                                <td> <input type="text" name="tname" required="true"/></td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td> <input type="text" name="tdescription" required="true"/></td>
                            </tr>
                            <tr>
                                <td>Upload File</td>
                                <td> <input type="file" name="filname"/></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center"><input type="submit" value="upload"/> </td>
                            </tr>
                        </table>
                        <br><br>
                        
                        <table>
                            <tr>
                                <th>S.no.</th>
                                <th>Tendor Name</th>
                                <th>Description</th>
                                <th>File Name</th>
                                <th>Download</th>
                                <th>Upload Date</th>
                                <th>Date</th>
                            </tr>
                            <%
                                DatabaseManager db=new DatabaseManager();
                                String q="select * from tendor";
                                ResultSet rs = db.selectQuery(q);
                                int n=1;
                                while(rs.next())
                                {
                            %>
                            <tr>
                                <td><%=n%></td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(4)%></td>
                                <td><a href="<%=request.getContextPath()+"/uploadfile/"+rs.getString(4)%>">Download</a></td>
                                <td><a href="admincode/deldownload.jsp?down=<%=rs.getInt(1)%>"/>Delete</td>
                            </tr>
                            <%
                                }
                            %>
                        </table>
                    </center>
                </form>
            </div>
                        
            <div id="footer">
                <div class="subfooter">
                    Copyright &copy; to green gas limited
                </div>
                <div class="subfooter">
                    Developed by: PRIYA YADAV
                </div>
            </div>
                        
        </div>
    </body>
</html>
