<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-cache");
%>
<%@ page import="java.util.*,online.*" errorPage="Error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>OASS(online assignment submision system.com</title>
<meta name="keywords" content="Free website, free template, website template, css layout, dark gray color" />
<meta name="description" content="Free Website, Free CSS Template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
#templatemo_container #templatemo_leftcolumn #templatemo_sitetitle p {
	font-family: MS Serif, New York, serif;
}
-->
</style>
      <head>

<title>Login Page</title>
        </head>

<body >
  <h1 align="Center" class="punit"> Admins Area</h1>
<form name="Online Assignment Submission" method="post" action="add.jsp">

<hr>

  <p><span class="punit"><span class="punit"><span class="punit">Enrollment Number :</span></span></span><span class="punit"><span class="punit"> 		
  <input type="text" name="EnrollNo" size=20 />
  </span></span></p>
  <p><span class="punit"><span class="punit"><span class="punit">Name : </span>
    <input type="text" name="Name" size=20 />
  </span></span></p>
  <p><span class="punit"><span class="punit"><span class="punit">Password	:</span>
    <Input type="Password" name=Password> 
  </span></span></p>
  <p><span class="punit"><span class="punit"><span class="punit">Semester :</span>
    <Input type="text" name="Semester">  
  </span></span></p>
  <p><span class="punit"><span class="punit"><br>
    
    
    <input type="Submit" value="Submit Form">
  </span></span><span class="punit"><span class="punit">
  <input name="" type="reset" value="Clear Form"></span></span></p>
  <p></p>
<hr>
  <div id="templatemo_rightcolumn">
    <h1>Only for Administrative Purpose</h1>
    <p>Here any one can submit there hard work so called assignments</p>
<p> from any where belonging to same organisation</p>
<p> with a simple authentication required only...</p>
    <div class="readmore_darkblue"></div>
  </div>
</form>
<div id="templatemo_two_column">    
    	<p>&nbsp;</p>
    	<div class="two_columns_left">
    	  <h3>Our Services</h3>
            <p> <strong>Key aspects of OASS:</strong></p>
            <ul>
            	<li><strong>download forms</strong></li>
            <li><strong>Plagiarism                </strong></li>
                <li><strong>E-Commerce Store</strong></li>
            </ul>
            <div class="readmore_black"></div>
	  </div>
        
      <div class="two_columns_right">
	        <h3>Our Area</h3>
            <div class="news_area">
              <p><strong>50+</strong></p>
              <p> <strong>LICENSED STUDENTS </strong></p>
                <p><strong>5+ </strong></p>
                <p><strong>FACULTIES</strong></p>
                <p><strong>belongs to SIRTS(IT)</strong></p>
            </div>
            <div class="news_area">
              <p>&nbsp;</p>
                <div class="readmore_black"></div>
			</div>            
            
        </div>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
	</div>
<center>
	<div id="templatemo_footer">
<a href="#">Home</a> | <a href="oass.jsp">OASS</a> | <a href="about.jsp">About</a> | <a href="terms.jsp">Terms</a> | <a href="about.jsp">Contact Us</a><br />
        Copyright &copy; 2010-2011 <a href="#">OASS</a>- Designed by ADMINS</div>       
</div>
</center>
</div>       
</body>
</html>