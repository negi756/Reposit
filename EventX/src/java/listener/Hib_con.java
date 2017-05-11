package listener;


import javax.servlet.*;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Hib_con implements ServletContextListener {
    ServletContext ctx;
    SessionFactory sf;
    @Override
	public void contextInitialized(ServletContextEvent e) {
	ctx=e.getServletContext();
	
        Configuration cfg=new Configuration();
        cfg.configure("hib_xml/hibernate.cfg.xml");
        sf=cfg.buildSessionFactory();
        
        ctx.setAttribute("hibsessionf", sf);
        }
    @Override
    public void contextDestroyed(ServletContextEvent e){
        sf.close();
    }
    
    
}
