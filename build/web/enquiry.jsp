
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/generalstyle.css" rel="stylesheet" type="text/css"/>
        <link href="css/menu.css" rel="stylesheet" type="text/css"/>
        <script>
            
            var i=0;
            var imglist=["1.JPG","2.JPG","3.JPG","4.jpg","5.jpg","6.jpg","7.JPG","8.jpg"];
            
            function moveSlider()
            {
                document.getElementById("slide").src="images/"+imglist[i];
                i++;
                
                if(i==imglist.length)
                {
                    i=0;
                }  
                    
                window.setTimeout("moveSlider()", 2000);
                
            }
        </script>
        <style>
            td
            {
                font-size: 30px;
                margin: 10px;
                padding: 10px;
            }
        </style>
    </head>
    <body onload="moveSlider()"  style="background-color: #f7e6ff;">
        <form action="SaveEnquiry" method="post">
            <div id="wrapper">
                
                <div id="header" >
                    <div id="logo">
                        <img src="images/logo.png" alt="" height="150px" width="150px"/>
                    </div>
                    <div id="banner" style="height:150px; width: 850px; float: left; background: blue;">
                        <img src="images/banner.jpg" alt="" height="150px" width="850px"/>
                    </div>
                </div>
                
                <div id="menu">
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="services.jsp">Services</a></li>
                        <li><a href="Registration.jsp">Registration</a></li>
<!--                        <li><a href="recruitment.jsp">Recruitment</a></li>-->
                        <li><a href="Login.jsp">Login</a></li>
                        <li><a href="enquiry.jsp">Enquiry</a></li>
                    </ul>
                </div>
                 
                <div id="slider" style="height:250px;width: 1000px;background:#f7e6ff;">
                    <img id="slide" width="1000px" height="250px"/>
                </div>
                
                <div id="container">
                    <div id="left" style="background-color:#e6b3ff;">
                        <div id="up" style="margin-top:20px; margin-left: 5px;">
                            <div class="info">Green Gas Limited(GGL)</div>
                                Green Gas Limited (GGL) is a joint venture of Gail (india) Limited [Gail]
                                 and Indian oil Corporation Limited [IOCL].<br/><p>It has beenincorporated for the 
                                 implementation of city Gas projects for supply of piped natural Gas (PNG) to
                                 domenstic,commercial and industrial.</p>
                        </div>
                        <div id="down"  style="margin-left:20px;">
                            <div class="info"><marquee behavior="alternate">News Updates</marquee></div>
                            <marquee onmouseover="stop();" scrollamount="3" direction="up"> <strong><i>1.</i></strong> Now You can Register online for Domenstic PNG connection.<br/><br/>
                            <strong><i>2.</i></strong> Commercial CNG sale has been commenced at Parkash Auto Faizabad road.<br/><br/>
                            <strong><i>3.</i></strong> Upcoming CNG station :<br/><span style="color:khaki "><br/>&nbsp;&nbsp;Lucknow</span>
                            <span  style="color:khaki "><br/>&nbsp;&nbsp;Jhansi</span><span  style="color:khaki "><br/>&nbsp;&nbsp;Gorakhpur</span></marquee>
                            
                        </div>
                    </div>
                    <div id="main"  style="background-color: #f7e6ff;">
                       <!--- <h1 style="text-align: center; color: black;">Enquiry Form</h1>   --->
                       <center>
                         <fieldset style="width:550px; margin-top: 30px;">
                             <legend style="color: black; font-size: 40px;">Enquiry Form</legend>
                        <table align="center">
                            <tr>
                                <td>Enter Your Name</td>
                                <td><input type="text" name="name" style="height:25px; width: 200px;"/></td>
                            </tr>
                            <tr>
                                <td>Gender</td>
                                <td>
                                    <input type="radio" name="gender" value="Male"/>Male
                                    <input type="radio" name="gender" value="Female"/>Female
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Your Address</td>
                                <td><textarea name="address" style="height:25px; width: 200px;"></textarea></td>
                            </tr>
                            <tr>
                                <td>Enter Contact No.</td>
                                <td><input type="text" name="contactno" style="height:25px; width: 200px;"/></td>
                            </tr>
                            <tr>
                                <td>Enter Email Address</td>
                                <td><input type="email" name="emailaddress" style="height:25px; width: 200px;"/></td>
                            </tr>
                            <tr>
                                <td>Enter Text Message</td>
                                <td><textarea name="message" style="height:25px; width: 200px;"></textarea></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td><input type="submit" value="Submit" style="height:30px; width: 100px;"></td>
                            </tr>
                            
                        </table></fieldset></center>
                    </div>
                </div>
                
                <div id="footer">
                    <div id="lfooter" style="margin-top: 30px;">
                        <p> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Copyright &copy; 2017 </strong> <span style="color:khaki;">to E_Procurment</span></p>
                    </div>
                    
                    <div id="rfooter" style="margin-top: 30px;">
                        <p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Designed and Developed by:</strong> <span style="color:khaki;">PRIYA YADAV</span></p>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>