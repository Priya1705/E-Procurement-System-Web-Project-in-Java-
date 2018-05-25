
<%@page import="MyPackage.Otp"%>
<%@page import="MyPackage.SmsSender"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.CaptchaGenerator"%>
<%@page import="MyPackage.DatabaseManager"%>
<%
DatabaseManager db=new DatabaseManager();
Otp ot=new Otp();
SmsSender sms=new SmsSender();
String str1="your OTP is=";
String str="select CONCERN_PERSON_CONTACTNO from vendor_registration where username='"+request.getParameter("username")+"'";
ResultSet rs=db.selectQuery(str);
if(rs.next()==true)
{
    String code=ot.OTPpass();
    sms.SendSms(rs.getString("CONCERN_PERSON_CONTACTNO"), str1+""+code);
    session.setAttribute("username", request.getParameter("username"));
    session.setAttribute("otpcode", code);
    response.sendRedirect("../resetpasswrd.jsp");
}
else
{
  out.println("<script>alert('sry');</script>");
}

%>
