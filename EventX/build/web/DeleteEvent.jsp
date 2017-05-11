<%-- 
    
Delete the Event

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.cfg.*,org.hibernate.*"%>
<%@page import="hib_beans.*"%>
<%@page session="false"%>
<%
    HttpSession hs=request.getSession(false);
    if(hs!=null){
    int eid=Integer.parseInt(request.getParameter("eid"));
    Events e=new Events();
    e.setEid(eid);
    SessionFactory sf=(SessionFactory)application.getAttribute("hibsessionf");
    Session ss=sf.openSession();
    Transaction t=ss.beginTransaction();
    
    ss.delete(e);
    t.commit();
    response.sendRedirect("Profile.jsp");
    
%>
<%
    }
else{
        response.sendRedirect("login.html");
    }
%>