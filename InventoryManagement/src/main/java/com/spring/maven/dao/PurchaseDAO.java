/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.IPurchaseDAO;
import com.spring.maven.model.Purchase;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dell
 */
@Repository(value = "purchaseDAO")
@Transactional
public class PurchaseDAO implements IPurchaseDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Purchase save(Purchase t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Purchase update(Purchase t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Purchase delete(int id) {
        Purchase p = (Purchase) sessionFactory.getCurrentSession().load(Purchase.class, id);
        sessionFactory.getCurrentSession().delete(p);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

    @Override
    public List<Purchase> getAll() {
        List<Purchase> e = sessionFactory.getCurrentSession().createCriteria(Purchase.class).list();
        sessionFactory.getCurrentSession().flush();
        sessionFactory.getCurrentSession().flush();

        return e;
    }

    @Override
    public Purchase getById(int id) {

        Purchase p = (Purchase) sessionFactory.getCurrentSession().get(Purchase.class, id);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

    public Purchase getByProductCode(int productCode) {
        Purchase p = (Purchase) sessionFactory.getCurrentSession().get(Purchase.class, productCode);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

    @Override
    public List<Purchase> searchExpenditure(HttpServletRequest request) {

        String date = request.getParameter("date");
        System.out.println(".............................  " + date);

        String hql = "from purchase where date = '" + date + "'";
        // String hql = "from sales";
        Query q = sessionFactory.getCurrentSession().createQuery(hql);
        List<Purchase> sl = q.list();
        for (Purchase sl1 : sl) {
            System.out.println(sl1.getName() + " ................");
        }

        return q.list();
    }

    @Override
    public Purchase searchByName(String name) {

        String hql = "from purchase where name = :name";

        Query q = sessionFactory.getCurrentSession().createQuery(hql);
        q.setParameter("name", name);

        Purchase p = (Purchase) q.uniqueResult();
        System.out.println("hlw");
//        System.out.println(p.get);
        p.getName();
        return p;
    }
}
