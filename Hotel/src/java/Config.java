
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author israel
 */
public class Config {
    private final SessionFactory sessionFactory;
    private static Config instance;
    
    public Config() {
        sessionFactory = new Configuration()
                .configure() // configures settings from hibernate.cfg.xml
                .buildSessionFactory();
    }
    
    public static Config getInstance() {
        if(instance == null) {
            instance = new Config();
        }
        return instance;
    }
    
    public Session getSession() {
        Session session;
        if(sessionFactory.getCurrentSession() == null){
            session = sessionFactory.openSession();
        } else {
            session = sessionFactory.getCurrentSession();
        }
            
        return session;
    }
}
