<%-- 
    Document   : update
    Created on : Apr 30, 2010, 9:25:34 AM
    Author     : Viveck
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

   <%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-cache");
%>
 <%@ page import="java.util.*,online.*" errorPage="Error.jsp" %>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>

    </head>
    <body>

            <center><h1>Online Assignment Submission</h1></center>


 <%
String EnrollNo=request.getParameter("EnrollNo");
String Name=request.getParameter("Name");
String Password=request.getParameter("Password");
int Semester=Integer.parseInt(request.getParameter("Semester"));

StudentDetails x=new StudentDetails(EnrollNo, Name, Password, Semester);
x.add();
%>

<h2>Record is Added</h2>
<%
response.sendRedirect("Admin.jsp");
%>

 </body>
</html>
