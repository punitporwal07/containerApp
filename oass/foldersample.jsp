<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="javazoom.download.*,javazoom.download.util.*, java.util.*" %>
<html>
<jsp:useBean id="downloadbean" class="javazoom.download.DownloadBean" scope="page" />
<%
	Repository repository = Repository.getInstance();
	Config conf = repository.get("uniqueid");
	downloadbean.setConfig(conf);
   	downloadbean.setVirtualPath(request.getContextPath()+"/download");
%>
<head>
<title>rms</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.s {  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10pt}
.xs {  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt}
.xsb {  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; font-weight: bold}
-->
</style>
</head>
<body bgcolor="#FFFFFF" text="#000000">

       </td>
    </tr>
  </table>
  <font face="Verdana, Arial, Helvetica, sans-serif" size="-2"> </font><br>
</div>
<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td bgcolor="#CCCCCC">
      <table border="0" cellspacing="1" cellpadding="0" align="center">
        <tr align="center" bgcolor="#EEEEEE" class="s"> 
          <td><b>&nbsp;NO.&nbsp;</b></td>
          <td><b>FACULTY NAME</b></td>
          <td><b>BRANCH & SEM</b></td>
          <td><b>SUBJECT</b></td>
          <td><b>Download link</b></td>
          <td><b>DATE</b></td>
        </tr>
        <tr align="center" bgcolor="#FFFFFF" class="s"> 
          <td><b>1</b></td>
          <td><b>&nbsp;ABHIGYAN TIWARY&nbsp;</td>     
          <td>&nbsp;IT VII,CSA VII &nbsp;</td>
          <td>&nbsp;COMPILER DESIGN &nbsp;</td>
          <td align="center"><a href="<%= downloadbean.getDownloadLink("CDUnit1.ppt") %>">CD UNIT 1</a>&nbsp;</b><a href="<%= downloadbean.getDownloadLink("Useless Grammer Symbols.ppt") %>"> ugc.ppt</a>&nbsp;</b><a href="<%= downloadbean.getDownloadLink("lec02-parserCFG.ppt") %>">parserCFG</a>&nbsp;</br></td>
          <td align="center">21/AUG/2009</td> 
        </tr>
        <tr align="center" bgcolor="#FFFFFF" class="s"> 
          <td><b>2</b></td>
          <td><b>MEGHA KAMBLE&nbsp;</td>
          <td>&nbsp;CS VII&nbsp;</td>
          <td>ARTIFICIAL INTELLIGENCE&nbsp;</td>
          <td align="center"><a href="<%= downloadbean.getDownloadLink("chapter2_UnitI.ppt") %>">UNIT 1-1</a>&nbsp;</b><a href="<%= downloadbean.getDownloadLink("Chapter2_Search_uniti.ppt") %>"> UNIT 1-2</a>&nbsp;</b>&nbsp;</td>
          <td align="center">21/AUG/2009</td>  
        </tr>
        <tr align="center" bgcolor="#FFFFFF" class="s"> 
          <td height="21"><b>3</b></td>
          <td height="21"><b>&nbsp;SANJAY SHARMA&nbsp;</td>
          <td height="21">&nbsp;CS V &nbsp;</td>
          <td height="21">&nbsp;TOC &nbsp;</td>
          <td height="21" align="center"><a href="<%= downloadbean.getDownloadLink("TOC unit1.ppt") %>">TOC unit1</a>&nbsp;</b></td>
          <td align="center">03/AUG/2009</td> 
        </tr>
        <tr align="center" bgcolor="#FFFFFF" class="s"> 
          <td><b>4</b></td>
          <td>  </td>
          <td>&nbsp;&nbsp;</td>
          <td>&nbsp;&nbsp;</td>
          <td align="center"><a href="<%= downloadbean.getDownloadLink("ziptest.zip") %>"></a></td>
          <td align="center"></td>  
            
        </tr>
         <tr align="center" bgcolor="#FFFFFF" class="s"> 
          <td height="21"><b>5</b></td>
          <td height="21"><b>&nbsp;&nbsp;</b></td>
          <td height="21">&nbsp;&nbsp;</td>
          <td height="21">&nbsp;&nbsp;</td>
          <td height="21" align="center"><a href="<%= downloadbean.getDownloadLink("network.ppt") %>"></a></td>
           <td align="center"></td>  
        </tr>
      </table>
    </td>
  </tr>
</table>
<div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="-2"><a href="http://www.sirtbhopal.ac.in"><br>
  SAGAR<br>
  </a></font></div>
</body>
</html>
