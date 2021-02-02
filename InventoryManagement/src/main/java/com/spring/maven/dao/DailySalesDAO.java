/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.IDailySalesDAo;
import com.spring.maven.model.DailySales;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dell
 */
@Repository(value = "dailySalesDAO")
@Transactional
public class DailySalesDAO implements IDailySalesDAo {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public DailySales save(DailySales t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public DailySales update(DailySales t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public DailySales delete(int id) {

        DailySales p = (DailySales) sessionFactory.getCurrentSession().load(DailySales.class, id);
        sessionFactory.getCurrentSession().delete(p);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

    @Override
    public List<DailySales> getAll() {

        List<DailySales> e = sessionFactory.getCurrentSession().createCriteria(DailySales.class).list();
        sessionFactory.getCurrentSession().flush();
        sessionFactory.getCurrentSession().flush();

        return e;
    }

    @Override
    public DailySales getById(int id) {

        DailySales p = (DailySales) sessionFactory.getCurrentSession().get(DailySales.class, id);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

//    public List<DailySales> getSalesByMonth(String month, String year) {
//        String hql = "from dailySales where month = :month AND year = :year";
//        Query q = sessionFactory.getCurrentSession().createQuery(hql);
//        q.setParameter("month", month);
//        q.setParameter("year", year);
//        List<DailySales> pl = q.list();
//        System.out.println(pl);
//        return pl;
//    }

}
