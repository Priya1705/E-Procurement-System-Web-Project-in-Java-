
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Green Gas Limited</title>
        <link href="images/logo.jpg" rel="icon"/>
        <link href="css/generalstyle.css" rel="stylesheet"/>
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
            #map 
            {
                height: 400px;
                width: 100%;
            }
        </style>
    </head>
    <body onload="moveSlider()"  style="background-color: #f7e6ff;">
        <form>
            <div id="wrapper">
                
                <div id="header">
                    
                    <div id="logo">
                        <img src="images/logo.png" width="150" height="150"/>
                    </div>
                    
                    <div id="banner">
                        <img src="images/banner.jpg" width="850" height="150"/>
                    </div>
                    
                </div>
                
                <div id="menu">
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="services.jsp">Services</a></li>
                        <li><a href="Registration.jsp">Registration</a></li>
                        <li><a href="Login.jsp">Login</a></li>
                        <li><a href="enquiry.jsp">Enquiry</a></li>
                    </ul>
                </div>
                
                <div id="slider"  style="background-color: #f7e6ff;">
                    <img id="slide" width="1000" height="250"/>
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
                            <marquee onmouseover="stop();" scrollamount="3" direction="up" onmouseout="start();"> <strong><i>1.</i></strong> Now You can Register online for Domenstic PNG connection.<br/><br/>
                            <strong><i>2.</i></strong> Commercial CNG sale has been commenced at Parkash Auto Faizabad road.<br/><br/>
                            <strong><i>3.</i></strong> Upcoming CNG station :<br/><span style="color:khaki "><br/>&nbsp;&nbsp;Lucknow</span>
                            <span  style="color:khaki "><br/>&nbsp;&nbsp;Jhansi</span><span  style="color:khaki "><br/>&nbsp;&nbsp;Gorakhpur</span></marquee>
                        </div>
                    </div>
                    <div id="main" style="background-color: #f7e6ff;">
                        <div style="height:45px;"></div>
                        <center>
                            <h3>My Google Location</h3>
                        </center>
                        <div id="map"></div>
                        
                        <script>
                            function initMap() 
                            {
                                var uluru = {lat: 26.8650, lng: 81.0025};
                                var map = new google.maps.Map(document.getElementById('map'), {
                                zoom: 4,
                                center: uluru
                                });
                                var marker = new google.maps.Marker({
                                position: uluru,
                                map: map
                                });
                            }
                        </script>
                        <script async defer
                            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyChHldfwqCRrdpndy-U--oPAujcI8rNpuw&callback=initMap">
                        </script>
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
