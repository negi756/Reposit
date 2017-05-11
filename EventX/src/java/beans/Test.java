package beans;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Test {
    public static void main(String[] args){
        Configuration cfg=new Configuration();
        cfg.configure("hibernate.cfg.xml");
	SessionFactory sf=cfg.buildSessionFactory();
	Session ss=sf.openSession();
        Transaction t=ss.beginTransaction();
		
        Demo d=new Demo();
        d.setId(222);
        
        ss.save(d);
        t.commit();
        ss.close();
        sf.close();
    }
}
