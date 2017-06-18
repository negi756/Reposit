<%-- 
    Document   : Instruction
    Created on : May 8, 2017, 11:27:01 AM
    Author     : Narender Singh Negi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="boot/css/bootstrap.min.css" rel="stylesheet">
	<link href="boot/css/bootstrap-theme.min.css" rel="stylesheet">
	<script type="text/javascript" src="jj/jquery-3.0.0.min.js"></script>
	<script type="text/javascript" src="boot/js/bootstrap.min.js"></script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form method="post" action="ques.jsp?&tsub=<%=request.getParameter("sub")%>">
        <button type="submit" class="btn btn-warning" id="startbut">Start the test</button>
        </form>
        </body>
    </html>
