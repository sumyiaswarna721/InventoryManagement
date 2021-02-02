/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.ICustomerWiseSalesDAO;
import com.spring.maven.model.CustomerWiseSales;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dell
 */
@Repository(value = "customerWiseSalesDAO")
@Transactional
public class CustomerWiseSalesDAO implements ICustomerWiseSalesDAO  {

    @Autowired
    SessionFactory sessionFactory;
    
    @Override
    public CustomerWiseSales save(CustomerWiseSales t) {
       
      sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public CustomerWiseSales update(CustomerWiseSales t) {
      
    sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public CustomerWiseSales delete(int id) {
      
       CustomerWiseSales p = (CustomerWiseSales) sessionFactory.getCurrentSession().load(CustomerWiseSales.class, id);
        sessionFactory.getCurrentSession().delete(p);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

    @Override
    public List<CustomerWiseSales> getAll() {
      
       List<CustomerWiseSales> e = sessionFactory.getCurrentSession().createCriteria(CustomerWiseSales.class).list();
        sessionFactory.getCurrentSession().flush();
        sessionFactory.getCurrentSession().flush();

        return e;
    }

    @Override
    public CustomerWiseSales getById(int id) {
       
    
        CustomerWiseSales p = (CustomerWiseSales) sessionFactory.getCurrentSession().get(CustomerWiseSales.class, id);
        sessionFactory.getCurrentSession().flush();
        return p;
    }
    
}
