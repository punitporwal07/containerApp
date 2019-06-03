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
</head>
<script language="JavaScript">
function validation()
{
if(!validString(document.thisform.EnrollNo,4,"Invalid Enrollment Number"))
return false;
if(!validNum(document.thisform.Password,6,"Invalid Password"))
return false;
return true;
}
</script>

<body>
<div id="templatemo_container">

<div id="templatemo_leftcolumn">
	<div id="templatemo_sitetitle">
		<div class="title"> OASS<span></span></div>
		<p><strong>(Online Assignment submission System)</strong></p>
    </div>
    
    <div id="templatemo_menu">
    	<div class="templatemo_menu_top"></div>
        <ul>
          	<li><a href="terms.jsp">Terms</a></li>
            <li><a href="about">About Us</a></li>
            <li><a href="mailto:punitporwal07@gmail.com>">Help</a></li>
        </ul>
    </div>
    
    <div id="templatemo_search">
	    <h2>Student Login</h2>
 <form name="thisform" onSubmit="return validation()" method="post" action="verify.jsp">        					 
          <div class="form_row">
<label><strong>EnrollNo</strong></label><input name="EnrollNo" type="text" class="inputfield" id="email_addremss" maxlength="30"/>
          </div>
          <div class="form_row">
<label><strong>Password</strong></label><input name="Password" type="password" class="inputfield" id="password" maxlength="30"/>
          </div>
         
          <input class="button" type="submit" name="Submit" value="Login" />
          <form action="home.html">

        </form>
    </div>
</div>

<div id="templatemo_rightcolumn">
	<div id="templatemo_banner">
	  <h1>Welcome to Online Assignment Submission</h1>
      <p>Here any one can submit there hard work so called assignments from any where belonging to same organisation with a simple authentication required only...</p>
        <div class="readmore_darkblue"></div>
    </div>
    

	<div id="templatemo_two_column">    
    	<p>&nbsp;</p>
    	<div class="two_columns_left">
    	  <h3>Our Services</h3>
            <p> Key aspects of OASS:</p>
            <ul>
            	<li>download forms</li>
                <li>Plagiarism                </li>
                <li>E-Commerce Store</li>
            </ul>
            <div class="readmore_black"></div>
	  </div>
        
      <div class="two_columns_right">
	        <h3>Our Area</h3>
            <div class="news_area">
              <p><strong>50+</strong></p>
              <p> LICENSED STUDENTS </p>
                <p>5+ </p>
                <p>FACULTIES</p>
                <p>belongs to SIRTS(IT)</p>
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
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
	</div>
	<div id="templatemo_footer">
<a href="#">Home</a> | <a href="oass.jsp">OASS</a> | <a href="about.jsp">About</a> | <a href="terms.jsp">Terms</a> | <a href="about.jsp">Contact Us</a><br />
        Copyright &copy; 2010-2011 <a href="#">OASS</a>- Designed by ADMINS<a href="http://www.templatemo.com" target="_blank"></a></div>       
</div>

</div>
</body>
</html>