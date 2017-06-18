/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pojodriver;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Narender Singh Negi
 */
public class driver implements ServletContextListener{
SessionFactory sf;
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        Configuration cfg = new Configuration();
        cfg.configure("resources/mysql.cfg.xml");
        sf=cfg.buildSessionFactory();
        ServletContext sc =sce.getServletContext();
        sc.setAttribute("hibsf", sf);
        //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
       sf.close();
    }
    
}
