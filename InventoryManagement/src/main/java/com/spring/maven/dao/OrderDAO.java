/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;
import com.spring.maven.dao.impl.IOrderDAO;
import com.spring.maven.model.Order;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dell
 */
@Repository(value = "orderDAO")
@Transactional
public class OrderDAO implements IOrderDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Order save(Order t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Order update(Order t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Order delete(int id) {
        Order p = (Order) sessionFactory.getCurrentSession().load(Order.class, id);
        sessionFactory.getCurrentSession().delete(p);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

    @Override
    public List<Order> getAll() {
        List<Order> e = sessionFactory.getCurrentSession().createCriteria(Order.class).list();
        sessionFactory.getCurrentSession().flush();
        sessionFactory.getCurrentSession().flush();

        return e;
    }

    @Override
    public Order getById(int id) {

        Order p = (Order) sessionFactory.getCurrentSession().get(Order.class, id);
        sessionFactory.getCurrentSession().flush();
        return p;
    }
    
//    
//    public Purchase getByProductCode(int productCode){
//        Purchase p = (Purchase) sessionFactory.getCurrentSession().get(Purchase.class, productCode);
//        sessionFactory.getCurrentSession().flush();
//        return p;
//    }

    
}