<%-- 
    Logout USer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.*,org.hibernate.cfg.*"%>
<%@page import="hib_beans.*"%>
<%@page session="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        HttpSession hs=request.getSession(false);
        if(hs!=null){
            hs.invalidate();
        }
        response.sendRedirect("index.jsp");
    
        %>
    </body>
</html>
