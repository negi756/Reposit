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
           String ufname=mpr.getParameter("ufname");
           String ulname=mpr.getParameter("ulname");
           //String upic=mpr.getOriginalFileName("upic");
           String udob=mpr.getParameter("udob");
           String uphone=mpr.getParameter("uphone");
           String uemail=mpr.getParameter("uemail");
           String upass=mpr.getParameter("upass");
           //out.println("upic "+upic);
           out.println("ulname "+ulname);
           SessionFactory sf=(SessionFactory)application.getAttribute("hibsessionf");
            Session ss=sf.openSession();
            String hql="from User where uid="+hs.getAttribute("uid");
            Query q=ss.createQuery(hql);
            User u1=(User)q.uniqueResult();
        
            Transaction t=ss.beginTransaction();
            User u=new User();
            u.setUid(u1.getUid());
            if(!ufname.equals("")){
               u.setUfname(ufname);
            }
            else{
                u.setUfname(u1.getUfname());
            }
           if(!ulname.equals("")){
               u.setUlname(ulname);
            }
           else{
               u.setUlname(u1.getUlname());
           }
           
          /*if(upic!=null){
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
            
                u.setUpic(u1.getUid()+upic);
            }
           else{*/
               u.setUpic(u1.getUpic());
           /*}
           */
           if(!udob.equals("")){
               u.setUdob(udob);
            }
            else{
                u.setUdob(u1.getUdob());
            }
           if(!uphone.equals("")){
               u.setUphone(Long.parseLong(uphone));
            }
           else{
               u.setUphone(u1.getUphone());
           }
           if(!uemail.equals("")){
               u.setUemail(uemail);
            }
           else{
               u.setUemail(u1.getUemail());
           }
           if(!upass.equals("")){
               u.setUpass(upass);
               
            }
           else{
               u.setUpass(u1.getUpass());
           }
           ss.merge(u);
          t.commit();
          ss.close();
          response.sendRedirect("Profile.jsp");
           }
           else{
               response.sendRedirect("login.html");
           }
       %>


     
        
        
    </body>
</html>
