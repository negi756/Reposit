<%-- 
    register new User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.*" %>
<%@page import="org.hibernate.Transaction" %>
<%@page import="hib_beans.User" %>
<%@page import="com.oreilly.servlet.*"%>
<%@page import="java.io.*"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ServletContext ctx=request.getServletContext();
            SessionFactory sf=(SessionFactory)ctx.getAttribute("hibsessionf");
            Session ss=sf.openSession();
            
            String path=application.getRealPath("/img/pro");
            MultipartRequest mpr=new MultipartRequest(request,path,(5*1024*1024));
            
            Transaction t=ss.beginTransaction();
	    User u=new User(mpr.getParameter("ufname"),mpr.getParameter("ulname"),mpr.getParameter("udob"),Long.parseLong(mpr.getParameter("uphone")),mpr.getParameter("uemail"),mpr.getParameter("upass"));
            ss.save(u);
            
            /*String name=mpr.getOriginalFileName("upic");
            String newfilename="";
            newfilename+=path+"\\"+u.getUid()+name;
            out.println("<br/>"+newfilename);
            File oldfile=new File(path+"\\"+name);
            File newFile=new File(newfilename);
            out.println(oldfile.renameTo(newFile));
            
            String hql="update User set upic='"+u.getUid()+name+"' where id="+u.getUid();
            out.println("<br/>"+hql);
            Query q=ss.createQuery(hql);
            out.println(q.executeUpdate());
            */
            ss.close();
            t.commit();
            


        %>
    
    <h1>Entered</h1>
    
    
    </body>
</html>
