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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <jsp:include page="Header.jsp"/>
        <jsp:include page="Menu.jsp"/>








        <%
        String msg="";
        int i=0;
        if (MultipartFormDataRequest.isMultipartFormData(request)) {
            // Uses MultipartFormDataRequest to parse the HTTP request.
            MultipartFormDataRequest mrequest = new MultipartFormDataRequest(request);
            String todo = null;
            if (mrequest != null) {
                todo = mrequest.getParameter("todo");
            }
            if ((todo != null) && (todo.equalsIgnoreCase("upload"))) {
                Hashtable files = mrequest.getFiles();
                if ((files != null) && (!files.isEmpty())) {
                    UploadFile file = (UploadFile) files.get("uploadfile");
                    upBean.store(mrequest, "uploadfile");

                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rs;


                    String un = "root";
                    String pass = "viveck";
                    String url = "jdbc:mysql://localhost/online";
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    conn = DriverManager.getConnection(url, un, pass);
                    System.out.println("Database Connection Established");
                    stmt = conn.createStatement();
                    String sql = new String();
                    File imgfile = new File("C:/uploads/" + file.getFileName());
                    FileInputStream fin = new FileInputStream(imgfile);
                    PreparedStatement pre = conn.prepareStatement("UPDATE studentassignment SET Sub1 = ? WHERE EnrollNo =?");

                    pre.setString(1, mrequest.getParameter("EnrollNo"));
                    
                    pre.setBinaryStream(2, fin, (int) imgfile.length());




                    pre.executeUpdate();



                    //out.println("Inserting Successfully!");
msg="<h1> Uploaded Successfully</h1>";

                } else {
                    //out.println("<li>No uploaded files");
msg="Image Could not be Uploaded .";
                }

            } else {
                out.println("<BR> todo=" + todo);
            }
        }
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs;






            %>

<br><br><br><br><br><br><br><br><br><br>
    <h1><%=msg%></h1>
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
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

<center>


      	<div id="templatemo_footer">
<a href="student1.jsp">Home</a> | <a href="oass.jsp">OASS</a> | <a href="about.jsp">About</a> | <a href="terms.jsp">Terms</a> | <a href="about.jsp">Contact Us</a><br />
        Copyright &copy; 2010-2011 <a href="oass.jsp">OASS</a>- Designed by ADMINS<a href="http://www.templatemo.com" target="_blank"></a></div>       
</div>
</center>



    </body>
</html>
