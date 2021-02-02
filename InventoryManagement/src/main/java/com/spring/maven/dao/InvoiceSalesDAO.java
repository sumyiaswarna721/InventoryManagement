/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.IInvoiceSalesDAO;
import com.spring.maven.model.InvoiceSales;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dell
 */
@Repository(value = "invoiceSalesDAO")
@Transactional

public class InvoiceSalesDAO implements IInvoiceSalesDAO{

        @Autowired
    SessionFactory sessionFactory;
    
    @Override
    public InvoiceSales save(InvoiceSales t) {
       
       sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public InvoiceSales update(InvoiceSales t) {
     
       sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public InvoiceSales delete(int id) {
       
       InvoiceSales p = (InvoiceSales) sessionFactory.getCurrentSession().load(InvoiceSales.class, id);
        sessionFactory.getCurrentSession().delete(p);
        sessionFactory.getCurrentSession().flush();
        return p;
    
    }

    @Override
    public List<InvoiceSales> getAll() {
        
    
         List<InvoiceSales> e = sessionFactory.getCurrentSession().createCriteria(InvoiceSales.class).list();
        sessionFactory.getCurrentSession().flush();
        sessionFactory.getCurrentSession().flush();

        return e;
    }

    @Override
    public InvoiceSales getById(int id) {
      
    
        InvoiceSales p = (InvoiceSales) sessionFactory.getCurrentSession().get(InvoiceSales.class, id);
        sessionFactory.getCurrentSession().flush();
        return p; 
    }
    
}
