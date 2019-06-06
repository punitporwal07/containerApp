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
                   
                <td align="left"><b>Emp Name: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" name="uname"><br></td>
                </tr>
                

                <tr>
                 <td align="left"><b>Salary: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input type="text" name="salary"><br></td>

                </tr>
                
                <tr>

                <td align="left"><b>Date of Joining </b><input type="text" name="doj"><br></td>

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
</html>
