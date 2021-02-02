/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.IAllStockDAO;
import com.spring.maven.model.AllStock;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dell
 */
@Repository(value = "allStockDAO")
@Transactional
public class AllStockDAO implements IAllStockDAO{

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public AllStock save(AllStock t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public AllStock update(AllStock t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public AllStock delete(int id) {
     

        AllStock p = (AllStock) sessionFactory.getCurrentSession().load(AllStock.class, id);
        sessionFactory.getCurrentSession().delete(p);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

    @Override
    public List<AllStock> getAll() {
       
        List<AllStock> e = sessionFactory.getCurrentSession().createCriteria(AllStock.class).list();
        sessionFactory.getCurrentSession().flush();
        sessionFactory.getCurrentSession().flush();

        return e;
    }

    @Override
    public AllStock getById(int id) {
       

        AllStock p = (AllStock) sessionFactory.getCurrentSession().get(AllStock.class, id);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

   

}
