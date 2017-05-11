package listener;

import org.hibernate.*;
import javax.servlet.*;
import javax.servlet.http.*;
import hib_beans.*;
public class SessionControl implements HttpSessionListener{

    ServletContext ctx;
    @Override
    public void sessionCreated(HttpSessionEvent se) {}

    @Override
    public void sessionDestroyed(HttpSessionEvent se){
        try{
        ctx=se.getSession().getServletContext(); 
        HttpSession hs=se.getSession();
        SessionFactory sf=(SessionFactory)ctx.getAttribute("hibsessionf");
        Session ss=sf.openSession();
        Transaction t=ss.beginTransaction();
        String hql="update User set uactive='false' where uid="+hs.getAttribute("uid");
        Query q=ss.createQuery(hql);
        if(q.executeUpdate()==1){
            t.commit();
        }
        ss.close();
    
    }
        catch(Exception e1){}
    
    }
}
