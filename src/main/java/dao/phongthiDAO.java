package dao;

import models.*;
import org.hibernate.HibernateException;
import utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.List;

public class phongthiDAO {
    private static SessionFactory factory;
    public static List<phongthi> listphongthi() {
        List<phongthi> phongthi = null;
        factory = HibernateUtil.getSessionFactory();
        Session session = factory.openSession();
        try {
            phongthi = session.createQuery("from phongthi").list();
            return phongthi;
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        session.close();
        return null;
    }


    public static void update(phongthi phongthi){
        if (phongthi != null) {
            factory = HibernateUtil.getSessionFactory();
            Session session = factory.openSession();
            Transaction tx = session.beginTransaction();
            session.update(phongthi);
            tx.commit();
            session.close();
        }
    }

    public static void insert(phongthi phongthi){
        if (phongthi != null) {
            factory = HibernateUtil.getSessionFactory();
            Session session = factory.openSession();
            Transaction tx = session.beginTransaction();
            session.save(phongthi);
            tx.commit();
            session.close();
        }
    }

    public static phongthi getDetail(phongthi phongthi){
            factory = HibernateUtil.getSessionFactory();
            Session session = factory.openSession();
            Transaction tx = session.beginTransaction();
            phongthi phongthi1 = session.get(phongthi.class, phongthi.getId());
            tx.commit();
            session.close();
            return phongthi1;
    }

    public static void deleteById(int id){
            factory = HibernateUtil.getSessionFactory();
            Session session = factory.openSession();
            Transaction tx = session.beginTransaction();
            phongthi phongthi = session.get(phongthi.class, id);
            session.delete(phongthi);
            tx.commit();
            session.close();
    }
}
