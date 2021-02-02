/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.IProductDAO;
import com.spring.maven.model.Product;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dell
 */
@Repository(value = "productDAO")
@Transactional
public class ProductDAO implements IProductDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Product save(Product t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Product update(Product t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Product delete(int id) {
        Product p = (Product) sessionFactory.getCurrentSession().load(Product.class, id);
        sessionFactory.getCurrentSession().delete(p);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

    @Override
    public List<Product> getAll() {
       
        List<Product> e = sessionFactory.getCurrentSession().createCriteria(Product.class).list();
        sessionFactory.getCurrentSession().flush();
        sessionFactory.getCurrentSession().flush();

        return e;
    }

    @Override
    public Product getById(int id) {
       

        Product p = (Product) sessionFactory.getCurrentSession().get(Product.class, id);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

}
