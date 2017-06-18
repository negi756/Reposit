<%-- 
    Document   : sign
    Created on : Apr 10, 2017, 4:06:29 PM
    Author     : Narender Singh Negi
--%>

<%@page import="org.hibernate.cfg.Configuration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.*" %>
<%@page import="org.hibernate.Transaction" %>
<%@page import="pojodriver.StudentPojo" %>

        <%
        ServletContext sc = request.getServletContext();
        String name = request.getParameter("snaam");
        String email = request.getParameter("smail");
        String password = request.getParameter("spas");
        StudentPojo sp = new StudentPojo(name,email,password);
        SessionFactory sf = (SessionFactory)sc.getAttribute("hibsf");
        Session s = sf.openSession();
        Transaction tn = s.beginTransaction();
        s.save(sp);
        tn.commit();
        s.close();
        response.sendRedirect("index.html");
        
        %>
    