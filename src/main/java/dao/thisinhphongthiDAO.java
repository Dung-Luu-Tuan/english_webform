package dao;

import models.*;
//import org.hibernate.search.FullTextSession;
//import org.hibernate.search.Search;
//import org.hibernate.search.query.dsl.QueryBuilder;
import utils.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
//import org.hibernate.search.query.engine.spi.QueryDescriptor;

import java.util.List;

public class thisinhphongthiDAO {
    private static SessionFactory factory;

    public static List<thisinh_phongthi> list() {
        factory = HibernateUtil.getSessionFactory();
        Session session = factory.openSession();
        List<thisinh_phongthi> thisinh_phongthis = null;
        try {
            thisinh_phongthis = session.createQuery("from thisinh_phongthi").list();
            return thisinh_phongthis;
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        session.close();
        return null;
    }

    public static void insert(thisinh_phongthi thisinh_phongthi) {
        if (thisinh_phongthi != null) {
            factory = HibernateUtil.getSessionFactory();
            Session session = factory.openSession();
            Transaction tx = session.beginTransaction();
            session.save(thisinh_phongthi);
            tx.commit();
            session.close();
        }
    }

    public static thisinh_phongthi getById(int id) {
            factory = HibernateUtil.getSessionFactory();
            Session session = factory.openSession();
            Transaction tx = session.beginTransaction();
            thisinh_phongthi thisinh_phongthi = session.get(thisinh_phongthi.class, id);
            tx.commit();
            session.close();
            return thisinh_phongthi;
    }

    public static List<thisinh_phongthi> getBySbd(String sbd){
        factory = HibernateUtil.getSessionFactory();
        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();
        List<thisinh_phongthi> thisinh_phongthi = session.createQuery("FROM thisinh_phongthi WHERE sbd LIKE :sbd")
                .setParameter("sbd", "%" + sbd + "%").list();
        tx.commit();
        session.close();
        return thisinh_phongthi;
    }

    public static List<thisinh> get(String name, String sdt){
        factory = HibernateUtil.getSessionFactory();
        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();
        List<thisinh> thisinhList = session.createQuery("FROM thisinh WHERE hoten LIKE :name and sdt LIKE :sdt")
                .setParameter("name", "%" + name + "%").setParameter("sdt", "%" + sdt + "%").list();
        tx.commit();
        session.close();
        return thisinhList;
    }

    public static void update(thisinh_phongthi thisinh_phongthi) {
        if (thisinh_phongthi != null) {
            factory = HibernateUtil.getSessionFactory();
            Session session = factory.openSession();
            Transaction tx = session.beginTransaction();
            session.update(thisinh_phongthi);
            tx.commit();
            session.close();
        }
    }

//        public static List<thisinh_phongthi> search(String keyword) {
//        factory = HibernateUtil.getSessionFactory();
//        Session session = factory.openSession();
//
//        FullTextSession fullTextSession = Search.getFullTextSession(session);
//
//        QueryBuilder qb = fullTextSession.getSearchFactory().buildQueryBuilder().forEntity(thisinh_phongthi.class).get();
//        org.apache.lucene.search.Query query = qb
//                    .keyword().onFields("sbd", "id_phongthi")
//                    .matching(keyword)
//                    .createQuery();
//
//        org.hibernate.Query hibQuery =
//                    fullTextSession.createFullTextQuery(query, thisinh_phongthi.class);
//
//        List<thisinh_phongthi> results = hibQuery.list();
//        return results;
//    }
}
