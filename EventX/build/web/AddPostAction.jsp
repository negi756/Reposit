<%-- 
    Make entry of post in events table in DB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.*,org.hibernate.cfg.*"%>
<%@page import="hib_beans.Events"%>
<%@page import="com.oreilly.servlet.*"%>
<%@page import="java.io.*,java.text.SimpleDateFormat,java.util.Date"%>
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
           String path=application.getRealPath("/img/eventpic");
           MultipartRequest mpr=new MultipartRequest(request,path,5*1024*1024);
           SessionFactory sf=(SessionFactory)application.getAttribute("hibsessionf");
           Session ss=sf.openSession();
           Transaction t=ss.beginTransaction();
           
           Events e=new Events();
           e.setEname(mpr.getParameter("ename"));
           e.setEtype(mpr.getParameter("etype"));
           e.setEsdate(mpr.getParameter("esdate"));
           e.setEedate(mpr.getParameter("eedate"));
           e.setEstime(mpr.getParameter("estime"));
           e.setEetime(mpr.getParameter("eetime"));
           e.setEvenue(mpr.getParameter("evenue"));
           e.setEdescription(mpr.getParameter("edescription"));
           e.setUid((Integer)hs.getAttribute("uid"));
           SimpleDateFormat dt = new SimpleDateFormat("dd/MM/yyyy");      
           Date d=new Date();
           e.setPdate(dt.format(d).toString());
           
           
           ss.save(e);
           String name=mpr.getOriginalFileName("epic");
           String newfilename="";
           String hql;
           if(name!=null){
           newfilename+=path+"\\"+e.getEid()+name;
           out.println("<br/>"+newfilename);
           File oldfile=new File(path+"\\"+name);
           File newFile=new File(newfilename);
           out.println(oldfile.renameTo(newFile));
            
           hql="update Events set epic='"+e.getEid()+name+"' where id="+e.getEid();
           }
           else{
               hql="update Events set epic='"+e.getEtype()+".jpg' where id="+e.getEid();
           
           }
           out.println("<br/>"+hql);
           Query q=ss.createQuery(hql);
           out.println(q.executeUpdate());
           
           
           t.commit();
           
           ss.evict(e);
           ss.close();
           //response.sendRedirect("Profile.jsp");
           }
           else{
               response.sendRedirect("index.jsp");
           }

        %>
        
        
        
    </body>
</html>
