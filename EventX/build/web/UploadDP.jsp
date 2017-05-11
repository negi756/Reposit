<%-- 
    Edit Existing User Profile details.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.*,hib_beans.*"%>
<%@page import="com.oreilly.servlet.*"%>
<%@page session="false" %>
<%@page import="java.io.*"%>
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
           String path=application.getRealPath("/img/pro");
           MultipartRequest mpr=new MultipartRequest(request,path,(5*1024*1024));
           String upic=mpr.getOriginalFileName("upic");
           SessionFactory sf=(SessionFactory)application.getAttribute("hibsessionf");
            
           Session ss=sf.openSession();
           String hql="from User where uid="+hs.getAttribute("uid");
           Query q=ss.createQuery(hql);
           User u1=(User)q.uniqueResult();
        
           Transaction t=ss.beginTransaction();
           
           if(upic!=null){
                String newfilename="";
                newfilename+=path+"\\"+u1.getUid()+upic;
                out.println("<br/>"+newfilename);
                File oldfile=new File(path+"\\"+upic);
                File newFile=new File(newfilename);
                out.println(oldfile.renameTo(newFile));
            
                String hql1="update User set upic='"+u1.getUid()+upic+"' where id="+u1.getUid();
                out.println("<br/>"+hql);
                Query q1=ss.createQuery(hql1);
                out.println(q1.executeUpdate());
            
                }
           
           
           t.commit();
           ss.close();
          //response.sendRedirect("Profile.jsp");
          }
          
       %>


     
        
        
    </body>
</html>
