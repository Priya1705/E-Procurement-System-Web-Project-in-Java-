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
        <form>
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
                    <div id="date" style="background-color: #9292b9; font-size: 30px;">Current Date:
                        <%
                            SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
                            String dt=df.format(new Date());
                            out.println(dt);
                        %>
                    </div>
                    <div id="name" style="background-color: #9292b9; font-size: 30px;">Hello,
                        <%
                            DatabaseManager dm=new DatabaseManager();
                            String username=session.getAttribute("username").toString();
                            String query="select concern_person from vendor_registration where username='"+username+"'";
                            ResultSet rs=dm.selectQuery(query);
                            if(rs.next()==true)
                            {
                                out.println(rs.getString(1));
                              
                                session.setAttribute("uname",rs.getString(1));
                            }    
                        %>
                    </div>
                </div>
                    <div id="menu" style="height:65px;">
                        <ul>
                            <li><a href="userhome.jsp"><b>Home</b></a></li>
                            <li><a href="review.jsp"><b>Review</b></a></li>
                            <li><a href="complain.jsp"><b>Complain</b></a></li>
                            <li><a href="feedback.jsp"><b>Feedback</b></a></li>
                            <li><a href="changepassword.jsp"><b>Change Password</b></a></li>
                            <li><a href="logout.jsp"><b>Logout</b></a></li>
                        </ul>
                    </div>
                    <div id="contain2"  style="background-color: #f7e6ff; background-image:url('../images/Risparmio_energetico_72dpi.png');opacity: 0.5; ">
                        
                        <br><br><br><br><br>
                        <span style="color:green; font-size: 23px;"><b><i>"The only way forward, if we are going to improve the environment, is to get everybody involved"</i></b></span>
                        <br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span style="color:green;font-size: 23px;"><b><i>-Richard Rogers</i></b></span>
                        <br><br><br><br>
                        <p>We at GGL believe that HEALTH, SAFETY & ENVIRONMENT are inherent part of a business. Hence, the company is making its best efforts to provide a safe and accident free environment for its customers & society. 
                        Apart from providing an environment friendly fuel to the customers, the Company uses best international practices in laying its infrastructure. 
                        The Company makes its best efforts to educate the customers to handle the fuel.</p>
                        <br><br>
                        <p>Pursuant to the directive of Hon’ble Supreme Court of India GAIL had undertaken a study to supply natural gas to the automobile, industrial, commercial and domestic Consumers in the cities of Agra and Lucknow to accomplish improvement of its ambient air quality.
                        Joint Venture agreement (JV) was signed between GAIL (India) Ltd. and Indian Oil Corporation Limited on May 11, 2005, which was followed by incorporation of Green Gas Ltd (GGL). The company was incorporated On October 07, 2005, with the objective of supplying City Gas & CNG in Agra and Lucknow.
                        Currently, GGL is authorized by the Central Government to lay, build, operate or expand City Gas Distribution Projects in Lucknow, Agra cities and Taj Trapezium Zone.
                        GGL will leave no stone unturned in creating the necessary facilities to cater the City Gas demand of transport, domestic, industrial and commercial customers in its area of operation. GGL is committed, aware and fully focused towards Health, Safety, and Environment (HSE). 
                        In this endeavor we have in place systems and processes that match up with the best in the world.</p>

                    </div>
                <div id="footer">
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
