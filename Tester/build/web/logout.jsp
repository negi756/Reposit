<%-- 
    Document   : logout
    Created on : Apr 23, 2017, 5:22:42 PM
    Author     : Narender Singh Negi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sess = request.getSession(false);
    if(sess!=null)
    {
        sess.invalidate();
    }
    response.sendRedirect("index.html");
%>
