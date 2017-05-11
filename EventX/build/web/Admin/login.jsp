<%-- 
    
    Verify Admin is valid or not

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.*"%>
<%@page import="org.hibernate.cfg.*"%>
<%@page import="hib_beans.*"%>
<%@page import="org.hibernate.criterion.*"%>
<%@page session="false"%>
<html>
    <body>
        <%
            ServletContext ctx=request.getServletContext();
            SessionFactory sf=(SessionFactory)ctx.getAttribute("hibsessionf");
            Session ss=sf.openSession();
            Criteria cr=ss.createCriteria("hib_beans.Admin");
            Criterion cr1=Restrictions.eq("aemail",request.getParameter("aemail"));
            Criterion cr2=Restrictions.eq("apass",request.getParameter("apass"));
            cr.add(cr1);
            cr.add(cr2);
            Admin a=(Admin)cr.uniqueResult();
            if(a!=null){
                HttpSession hs=request.getSession();
                hs.setAttribute("aid",a.getAid());
                hs.setAttribute("aemail",a.getAemail());
                hs.setAttribute("apass",a.getApass());
                
                response.sendRedirect("index.jsp");
            }
            else{
                out.println("Invalid Emial or Password");
            }
    
        %>
        
    </body>
    
</html>

    