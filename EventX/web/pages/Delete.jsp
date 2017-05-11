<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.*"%>


<%@page session="false"%>
<%
    HttpSession hs=request.getSession(false);
    if(hs!=null){
        SessionFactory sf=(SessionFactory)application.getAttribute("hibsessionf");
        Session ss=sf.openSession();
        
        String eid=request.getParameter("eid");
        if(eid!=null){
        String etype=request.getParameter("etype");
        String hql="delete Events where eid="+eid;
        //out.println(hql);
        Query q=ss.createQuery(hql);
        Transaction t=ss.beginTransaction();
        out.println(q.executeUpdate());
        t.commit();
        response.sendRedirect("Eventdetails.jsp?event="+etype);
        }
        else{
            String uid=request.getParameter("uid");
            String hql="delete User where uid="+uid;
            Query q=ss.createQuery(hql);
            Transaction t=ss.beginTransaction();
            out.println(q.executeUpdate());
            t.commit();
            response.sendRedirect("Userdetails.jsp?user=total");
        }
        
        
        
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    
    
    </body>
</html>

<%  
    
    ss.close();
    }
else{
    response.sendRedirect("login.html");
}
%>