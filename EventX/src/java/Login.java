import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import org.hibernate.*;
import org.hibernate.cfg.*;
import org.hibernate.criterion.*;
import hib_beans.*;
import org.json.simple.*;

public class Login extends HttpServlet{

@Override    
public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
    JSONObject json=new JSONObject();
        
    res.setContentType("text/html");
    PrintWriter out=res.getWriter();
    String uemail=req.getParameter("uemail");
    String upass=req.getParameter("upass");
    ServletContext ctx=req.getServletContext();
    SessionFactory sf=(SessionFactory)ctx.getAttribute("hibsessionf");
    Session ss=sf.openSession();
    Criteria cr=ss.createCriteria("hib_beans.User");
    Criterion cr1=Restrictions.eq("uemail",uemail);
    Criterion cr2=Restrictions.eq("upass",upass);
    cr.add(cr1);
    cr.add(cr2);
    User u=(User)cr.uniqueResult();
    if(u!=null){
        HttpSession hs=req.getSession();
        hs.setMaxInactiveInterval(180);
        hs.setAttribute("uid",u.getUid());
        hs.setAttribute("uemail",u.getUemail());
        hs.setAttribute("upass",u.getUpass());
        Transaction t=ss.beginTransaction();
        String hql="update User set uactive='true' where uid="+u.getUid();
        Query q=ss.createQuery(hql);
        q.executeUpdate();
            
        t.commit();
        ss.close();
        json.put("valid",true);
        out.println(json);
        //response.sendRedirect("index.jsp");
        }
    else{
        json.put("valid",false);
        out.println(json);
        }

}    
}
