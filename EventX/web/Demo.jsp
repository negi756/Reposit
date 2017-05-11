<%-- 
    Document   : Demo
    Created on : Feb 9, 2017, 12:00:33 AM
    Author     : sureaj negi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.Session" %>
<%@page import="org.hibernate.SessionFactory" %>
<%@page import="org.hibernate.Transaction" %>
<%@page import="org.hibernate.cfg.Configuration" %>
<%@page import="beans.Demo,java.io.*" %>
<%@page import="com.oreilly.servlet.*"%>
<%@page import="java.util.*,java.text.*"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String s1=request.getParameter("uemail");
            String s2=request.getParameter("upass");
            
            out.println(s1+s2);
        %>
        
    
    </body>
</html>
