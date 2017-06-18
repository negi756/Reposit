<%-- 
    Document   : log
    Created on : Apr 10, 2017, 5:36:26 PM
    Author     : Narender Singh Negi
--%>

<%@page import="pojodriver.StudentPojo"%>
<%@page import="org.hibernate.criterion.Criterion"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("lnaam");
    String password = request.getParameter("lpas");
    ServletContext sc = request.getServletContext();
    SessionFactory sf = (SessionFactory)sc.getAttribute("hibsf");
    Session s = sf.openSession();
    Criteria c = s.createCriteria("pojodriver.StudentPojo");
    Criterion cn1 = Restrictions.eq("email",id);
    Criterion cn2 = Restrictions.eq("password",password);
    c.add(cn1);
    c.add(cn2);
    StudentPojo std = (StudentPojo)c.uniqueResult();
    if(std!=null)
    {
        HttpSession sess = request.getSession();
        sess.setAttribute("id",std.getEmail());
        sess.setAttribute("name",std.getName());
        response.sendRedirect("home.jsp");
    }
    else
    {
        out.println("wrong id and password");
        response.sendRedirect("index.html");
    }
    
%>
