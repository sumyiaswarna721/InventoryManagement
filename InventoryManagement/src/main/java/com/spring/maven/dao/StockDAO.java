/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.IStockDAO;
import com.spring.maven.model.Stock;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dell
 */
@Repository(value = "stockDAO")
@Transactional
public class StockDAO implements IStockDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Stock save(Stock t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Stock update(Stock t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Stock delete(int id) {
        Stock p = (Stock) sessionFactory.getCurrentSession().load(Stock.class, id);
        sessionFactory.getCurrentSession().delete(p);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

    @Override
    public List<Stock> getAll() {
        List<Stock> e = sessionFactory.getCurrentSession().createCriteria(Stock.class).list();
        sessionFactory.getCurrentSession().flush();
        sessionFactory.getCurrentSession().flush();

        return e;
    }

    @Override
    public Stock getById(int id) {

        Stock p = (Stock) sessionFactory.getCurrentSession().get(Stock.class, id);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

}
