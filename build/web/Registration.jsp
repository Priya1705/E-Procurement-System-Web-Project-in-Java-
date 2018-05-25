
<%@page import="MyPackage.CaptchaGenerator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/generalstyle.css" rel="stylesheet" type="text/css"/>
        <link href="css/menu.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        
        <style>
            
            #pswd_info 
            {
                background: #dfdfdf none repeat scroll 0 0;
                color: #fff;
                left: 20px;
                position: absolute;
                top: 115px;
            }
            #pswd_info h4
            {
                background: black none repeat scroll 0 0;
                display: block;
                font-size: 14px;
                letter-spacing: 0;
                padding: 17px 0;
                text-align: center;
                text-transform: uppercase;
            }
            #pswd_info ul 
            {
                list-style: outside none none;
            }
            #pswd_info ul li 
            {
                padding: 10px 45px;
            }
            .valid 
            {
                background: rgba(0, 0, 0, 0) url("https://s19.postimg.org/vq43s2wib/valid.png") no-repeat scroll 2px 6px;
                color: green;
                line-height: 21px;
                padding-left: 22px;
            }

            .invalid 
            {
                background: rgba(0, 0, 0, 0) url("https://s19.postimg.org/olmaj1p8z/invalid.png") no-repeat scroll 2px 6px;
                color: red;
                line-height: 21px;
                padding-left: 22px;
            }
            #pswd_info::before 
            {
                background: #dfdfdf none repeat scroll 0 0;
                content: "";
                height: 25px;
                left: -13px;
                margin-top: -12.5px;
                position: absolute;
                top: 50%;
                transform: rotate(45deg);
                width: 25px;
            }
            #pswd_info 
            {
                display:none;
            }
        </style>
        
        <script>
            
            $(document).ready(function()
            {
                 $("#captcha").bind("copy",function(e)
                 {
                     e.preventDefault();
                 })
                 $("#captxt").bind("paste",function(e)
                 {
                     e.preventDefault();
                 })
             })
             
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
            
            $(document).ready(function()
            {
                $('input[type=password]').keyup(function() 
                {
                    var pswd = $(this).val();
		
                    //validate the length
                    if ( pswd.length < 8 ) 
                    {
                    	$('#length').removeClass('valid').addClass('invalid');
                    } 
                    else 
                    {
			$('#length').removeClass('invalid').addClass('valid');
                    }
		
                    //validate letter
                    if ( pswd.match(/[A-z]/) ) 
                    {
			$('#letter').removeClass('invalid').addClass('valid');
                    } 
                    else 
                    {
			$('#letter').removeClass('valid').addClass('invalid');
                    }

                    //validate capital letter
                    if ( pswd.match(/[A-Z]/) ) 
                    {
			$('#capital').removeClass('invalid').addClass('valid');
                    } 
                    else 
                    {
			$('#capital').removeClass('valid').addClass('invalid');
                    }

                    //validate number
                    if ( pswd.match(/\d/) ) 
                    {
			$('#number').removeClass('invalid').addClass('valid');
                    } 
                    else 
                    {
			$('#number').removeClass('valid').addClass('invalid');
                    }
		
                    //validate space
                    if ( pswd.match(/[^a-zA-Z0-9\-\/]/) ) 
                    {
			$('#space').removeClass('invalid').addClass('valid');
                    } 
                    else 
                    {
			$('#space').removeClass('valid').addClass('invalid');
                    }
		
                }).focus(function() 
                {
                    $('#pswd_info').show();
                }).blur(function() 
                {
                    $('#pswd_info').hide();
                });
	
            });
            
            function refreshFunction()
            {
                $("#captcha").load(location.href + " #captcha");
            }
        </script>
    </head>
    <body onload="moveSlider()"  style="background-color: #f7e6ff;">
        <form action="code/registrationcode.jsp" method="post">
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
                        <div id="down"  style="margin-left:20px;">
                            <div class="info"><marquee behavior="alternate">News Updates</marquee></div>
                            <marquee onmouseover="stop();" scrollamount="3" direction="up" onmouseout="start();"> <strong><i>1.</i></strong> Now You can Register online for Domenstic PNG connection.<br/><br/>
                            <strong><i>2.</i></strong> Commercial CNG sale has been commenced at Parkash Auto Faizabad road.<br/><br/>
                            <strong><i>3.</i></strong> Upcoming CNG station :<br/><span style="color:khaki "><br/>&nbsp;&nbsp;Lucknow</span>
                            <span  style="color:khaki "><br/>&nbsp;&nbsp;Jhansi</span><span  style="color:khaki "><br/>&nbsp;&nbsp;Gorakhpur</span></marquee>
                            
                        </div>
                    </div>
                    <div id="main"  style="background-color: #f7e6ff;">
                        <center>
                         <fieldset style="width:550px; margin-top: 10px; margin-bottom: 5px;">
                         <legend style="color: black; font-size: 40px;">Vendor Registration</legend>
                            <table align="center">
                            <tr><center>
                               
                            </center>
                            </tr>
                            <tr>
                                <td>Company Name</td> 
                                <td><input type="text" name="companyname" required="true"></td>
                            </tr>
                             <tr>
                                <td>Nature of Work</td> 
                                <td>
                                    <select name="natureofwork">
                                        <option>---Nature of Work---</option>
                                        <option>Production</option>
                                        <option>Service</option>
                                    </select>
                                </td>
                            </tr>
                             <tr>
                                <td>Address</td> 
                                <td><textarea name="address"></textarea></td>
                            </tr>
                             <tr>
                                <td>Chairperson Name</td> 
                                <td><input type="text" name="chairpersonname" required="true"></td>
                            </tr>
<!--                            <tr>
                                <td>TIN No.</td> 
                                <td><input type="text" name="tinno"></td>
                            </tr>
                             <tr>
                                <td>PAN No.</td> 
                                <td><input type="text" name="panno"></td>
                            </tr>-->
                             <tr>
                                <td>Company Type</td> 
                                <td>
                                    <select name="companytype">
                                        <option>---Company Type---</option>
                                        <option>Private Limited</option>
                                        <option>Limited</option>
                                        <option>Semi Government</option>
                                    </select>
                                </td>
                            </tr>
                             <tr>
                                <td>Establishment Year</td> 
                                <td><input type="number" name="estyear"></td>
                            </tr>
                             <tr>
                                <td>Projects Completed</td> 
                                <td><textarea name="projects"></textarea></td>
                            </tr>
                            <tr>
                                <td>Concern Person</td> 
                                <td><input type="text" name="concernperson"></td>
                            </tr>
                             <tr>
                                <td>Concern Person Contact No.</td> 
                                <td><input type="number" name="contactno" required="true"></td>
                            </tr>
                             <tr>
                                <td>Concern Person Email Address</td> 
                                <td><input type="text" name="concernemail"></td>
                            </tr>
<!--                            <tr>
                                <td>Concern Person Designation</td> 
                                <td><input type="text" name="concerndesignation"></td>
                            </tr>-->
                            <tr>
                                <td>Company URL</td> 
                                <td><input type="text" name="url"></td>
                            </tr>
                            <tr>
                                <td>Company Email Address</td> 
                                <td><input type="text" name="companyemail" required="true"></td>
                            </tr>
                            <tr>
                                <td>User Name</td> 
                                <td><input type="text" name="username" required="true"></td>
                            </tr>
                            <tr>
                                <td>Password</td> 
                                <td><input type="text" name="password" required="true"></td>
                                <td> 
                                    <div class="aro-pswd_info">
                                        <div id="pswd_info">
                                            <h4>Password must be required</h4>
                                                <ul>
                                                    <li id="letter" class="invalid">At least <strong>one letter</strong></li>
                                                    <li id="capital" class="invalid">At least <strong>one capital letter</strong></li>
                                                    <li id="number" class="invalid">At least <strong>one number</strong></li>
                                                    <li id="length" class="invalid">Be at least <strong>8 characters</strong></li>
                                                    <li id="space" class="invalid">be<strong> use [~,!,@,#,$,%,^,&,*,-,=,.,;,']</strong></li>
                                                </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>Captcha Code</td> 
                                <td>
                                    <%
                                        CaptchaGenerator cg=new CaptchaGenerator();
                                        String capcode=cg.createcaptcha();
                                    %>
                                    <h3 id="captcha" background="blue">
                                        <strike>
                                            <%=capcode
                                            %>
                                        </strike>
                                    </h3>
                                        <input type="hidden" name="capcode" value="<%=capcode%>">
                                        <input type="button" value="Refresh" onclick="refreshFunction()"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Captcha Code</td> 
                                <td><input type="text" name="captcha" required="true"></td>
                            </tr>
                            <tr>
                                <td></td> 
                                <td><input type="submit" name="submit"></td>
                            </tr>
                            
                        </table>
                         </fieldset></center>
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
