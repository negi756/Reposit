import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import org.hibernate.cfg.*;
import org.hibernate.*;
import org.hibernate.Criteria.*;
import hib_beans.*;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.json.simple.*;

public class Delete extends HttpServlet{

@Override    
public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
    HttpSession hs=req.getSession(false);
    if(hs!=null){
    JSONObject json=new JSONObject();
        
    res.setContentType("text/html");
    PrintWriter out=res.getWriter();
    ServletContext ctx=req.getServletContext();
    SessionFactory sf=(SessionFactory)ctx.getAttribute("hibsessionf");
    Session ss=sf.openSession();
    
    String eid=req.getParameter("eid");
    if(eid!=null){
        String hql="delete Events where eid="+eid;
        //out.println(hql);
        Query q=ss.createQuery(hql);
        Transaction t=ss.beginTransaction();
        q.executeUpdate();
        t.commit();
        //res.sendRedirect("Eventdetails.jsp?event="+etype);
        }
    else{
            String uid=req.getParameter("uid");
            String hql="delete User where uid="+uid;
            Query q=ss.createQuery(hql);
            Transaction t=ss.beginTransaction();
            out.println(q.executeUpdate());
            t.commit();
            //resp.sendRedirect("Userdetails.jsp?user=total");
        }
    ss.close();    
        
}
else{
    res.sendRedirect("login.html");
}
}    
}
