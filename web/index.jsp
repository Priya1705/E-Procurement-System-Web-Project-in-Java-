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
            body
            {
                 background-color: #f7e6ff;
            }
        </style>
    </head>
    <body onload="moveSlider()">
        <form>
            <div id="wrapper">
                
                <div id="header" style=" border-radius: 20px;" >
                    <div id="logo" >
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
                
                <div id="slider" style="height:250px;width: 1000px;background: #f7e6ff;">
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
                        <div id="down" style="margin-left:20px;">
                            <div class="info"><marquee behavior="alternate">News Updates</marquee></div>
                            <marquee onmouseover="stop();" scrollamount="3" direction="up" onmouseout="start();"> <strong><i>1.</i></strong> Now You can Register online for Domenstic PNG connection.<br/><br/>
                            <strong><i>2.</i></strong> Commercial CNG sale has been commenced at Parkash Auto Faizabad road.<br/><br/>
                            <strong><i>3.</i></strong> Upcoming CNG station :<br/><span style="color:khaki "><br/>&nbsp;&nbsp;Lucknow</span>
                            <span  style="color:khaki "><br/>&nbsp;&nbsp;Jhansi</span><span  style="color:khaki "><br/>&nbsp;&nbsp;Gorakhpur</span></marquee>
                            
                        </div>
                    </div>
                    <div id="main"  style="background-color: #f7e6ff;">
                        <div>
                            <img src="images/banner_green_initiative.png" alt="" height="200px;" width="800px;"/>
                        </div>
                        <div>
                            <br><br>
                            <center><b style="font-size: 25px;">VISION OF COMPANY</b></center></br></br>
                            To make Green Gas Limited an unparalleled natural gas distribution company, 
                            providing eco-friendly and clean fuel to transport, domestic, commercial and 
                            industrial sectors, with a total commitment to provide quality service to its customers.
                            <br>
                        </div><br></br></br>
                        <div>
                            <img src="images/BioBanner.png" alt="" height="205px;" width="800px;"/>
                        </div>
                    </div>
                </div>
                
                <div id="footer">
                    <div id="lfooter" style="margin-top: 30px;">
                        <p> <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Copyright &copy; 2017 </strong> <span style="color:khaki;">to E_Procurment</span></p>
                    </div>
                    
                    <div id="rfooter" style="margin-top: 30px;">
                        <p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Designed and Devloped by:</strong> <span style="color:khaki;">PRIYA YADAV</span></p>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
