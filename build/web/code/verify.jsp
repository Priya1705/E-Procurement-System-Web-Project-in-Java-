<%

   String sotp=session.getAttribute("otpcode").toString();
   String enterotp=request.getParameter("enterotp");
   if(sotp.equals(enterotp))
   {
   response.sendRedirect("../updatepass.jsp");
   }
   else
   {
   response.sendRedirect("../forgetpass.jsp");
   }

%>