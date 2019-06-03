<%
                response.setHeader("Pragma", "No-cache");
                response.setHeader("Cache-Control", "No-cache");
                response.setHeader("Cache-Control", "must-revalidate");
                response.setDateHeader("Expires",0);
   %>
<%@ page import="java.util.*,online.*" errorPage="Error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>OASS.com</title>
<meta name="keywords" content="free templates, website templates, CSS, HTML" />
<meta name="description" content="free website template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>


</head>
<body>

<h1>Online Assignment Submission System</h1>

<ul id="nav" class="dropdown dropdown-horizontal">
	<li class="punit"> <a href="student1.jsp"><strong>Home</strong></a> <strong> <a href="welcome.jsp">Assignments to submit</a> <a href="terms.jsp">Terms</a> <a href="about.jsp">About us</a> <a href="logout.jsp">Log Out</a> </strong></li>
</ul><br><br><br>
<hr>
<br>
<h3>PERSONAL DETAILS</h3>
<p><br>
  <br>
  Student Enrollment No&nbsp&nbsp&nbsp:&nbsp&nbsp <%= session.getAttribute("pass") %>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  
</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><br>
</p>
<hr>

<%
             String str=(String)session.getAttribute("pass");

            if(session.getAttribute("pass")== null || session.getAttribute("pass").equals(""))
                {
                    response.sendRedirect("oass.jsp");
                }
%>


<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

<center>


      	<div id="templatemo_footer">
<a href="student1.jsp">Home</a> | <a href="oass.jsp">OASS</a> | <a href="about.jsp">About</a> | <a href="terms.jsp">Terms</a> | <a href="about.jsp">Contact Us</a><br />
        Copyright &copy; 2010-2011 <a href="oass.jsp">OASS</a>- Designed by ADMINS<a href="http://www.google.com" target="_blank"></a></div>       
</div>
<p>&nbsp;</p>
</center>
                                                                                           
</body>
</html>