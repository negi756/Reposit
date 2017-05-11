import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.List;
import org.hibernate.*;
import org.hibernate.cfg.*;
import org.hibernate.criterion.*;
import hib_beans.User;
import org.json.simple.*;
import com.oreilly.servlet.*;
public class SignUp extends HttpServlet{

@Override    
public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
    JSONObject json=new JSONObject();
    res.setContentType("text/html");
    PrintWriter out=res.getWriter();
        
    ServletContext ctx=req.getServletContext();
    SessionFactory sf=(SessionFactory)ctx.getAttribute("hibsessionf");
    Session ss=sf.openSession();
           
    //String path=ctx.getRealPath("/img/pro");
    //MultipartRequest mpr=new MultipartRequest(req,path,(5*1024*1024));
        String uemail=req.getParameter("uemail");
        
        Criteria cr=ss.createCriteria(User.class);
        Criterion ct1=Restrictions.eq("uemail",uemail);
        cr.add(ct1);
        User ut=(User)cr.uniqueResult();
        if(ut!=null){
            json.put("valid",false);
            out.println(json);
        }
        else{
            Transaction t=ss.beginTransaction();
            User u=new User(req.getParameter("ufname"),req.getParameter("ulname"),req.getParameter("udob"),Long.parseLong(req.getParameter("uphone")),req.getParameter("uemail"),req.getParameter("upass"));
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
            json.put("valid",true);
            out.println(json);
        }
}    
}
