
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*,online.*" errorPage="Error.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <%
        String en = request.getParameter("EnrollNo");
        String ps = request.getParameter("Password");
        StudentDetails st = new StudentDetails(ps);

         boolean b=  st.update1();
         if(b)
         {
         response.sendRedirect("student1.jsp");
         session.setAttribute("pass", ps);
         }
         else
             response.sendRedirect("oass.jsp");
        
        %>




    </body>
</html>
