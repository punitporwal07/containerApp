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


<h1>&nbsp;</h1>
<h1>Upload your File!</h1>


<html>
    <%@ page language="java" import="javazoom.upload.*,java.util.*,java.sql.*,java.io.*,online.*" %>
    <%@ page errorPage="ExceptionHandler.jsp" %>

    <jsp:useBean id="upBean" scope="page" class="javazoom.upload.UploadBean" >
        <jsp:setProperty name="upBean" property="folderstore" value="c:/uploads" />
        <jsp:setProperty name="upBean" property="parser" value="<%= MultipartFormDataRequest.CFUPARSER %>"/>
        <jsp:setProperty name="upBean" property="parsertmpdir" value="c:/temp"/>
        <jsp:setProperty name="upBean" property="overwritepolicy" value="nametimestamp" />
    </jsp:useBean>

    <head>
        <title>Samples : Form Upload</title>
        <style TYPE="text/css">
            <!--
            .style1 {
                font-size: 12px;
                font-family: Verdana;
            }
            -->
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    </head>
    <body bgcolor="#FFFFFF" text="#000000">

        <jsp:include page="Header.jsp"/>
        <jsp:include page="Menu.jsp"/>

        <ul class="style1">
            
        </ul>
        <form method="post" action="upload.jsp" name="upform" enctype="multipart/form-data">
            <table width="60%" border="0" cellspacing="1" cellpadding="1" align="center">
            <tr>
            <td align="left">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="style1">
               <br><br><br><br><br><br>

                <tr>
                   
                <td align="left"><b>Enrollment no.: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" name="EnrollNo"><br></td>
                </tr>
                

                                
                <tr>

                <td align="left">Select a file to upload :</td>
                </tr>
                
                <tr>
                    <td align="left"><input type="file" name="uploadfile" size="50"></td>

                </tr>
                <tr>
                    <td align="left">
                        <input type="hidden" name="todo" value="upload">
                        <input type="submit" name="Submit" value="Submit">
                        <input type="reset" name="Reset" value="Cancel">
                    </td>
                </tr>
            </table>
            </table>
            <br>
            <br>

            <p>&nbsp;</p>
            <p>&nbsp;</p>

          </form>
        <jsp:include page="Footer.jsp"/>
    </body>


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
</center>


</html>
