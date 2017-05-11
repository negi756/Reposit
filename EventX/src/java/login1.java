import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import org.hibernate.*;
import org.hibernate.cfg.*;
import org.hibernate.criterion.*;
import hib_beans.*;
import org.json.simple.*;

public class login1 extends HttpServlet{

@Override    
public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
    JSONObject json=new JSONObject();
        
    res.setContentType("text/html");
    PrintWriter out=res.getWriter();
    String aemail=req.getParameter("aemail");
    String apass=req.getParameter("apass");
    ServletContext ctx=req.getServletContext();
            SessionFactory sf=(SessionFactory)ctx.getAttribute("hibsessionf");
            Session ss=sf.openSession();
            Criteria cr=ss.createCriteria("hib_beans.Admin");
            Criterion cr1=Restrictions.eq("aemail",req.getParameter("aemail"));
            Criterion cr2=Restrictions.eq("apass",req.getParameter("apass"));
            cr.add(cr1);
            cr.add(cr2);
            Admin a=(Admin)cr.uniqueResult();
            if(a!=null){
                HttpSession hs=req.getSession();
                hs.setAttribute("aid",a.getAid());
                hs.setAttribute("aemail",a.getAemail());
                hs.setAttribute("apass",a.getApass());
                
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
