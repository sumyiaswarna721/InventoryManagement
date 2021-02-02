/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.IVendorDAO;
import com.spring.maven.model.Vendor;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dell
 */
@Repository(value = "vendorDAO")
@Transactional
public class VendorDAO implements IVendorDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Vendor save(Vendor t) {

        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public Vendor update(Vendor t) {

        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Vendor delete(int id) {
        Vendor p = (Vendor) sessionFactory.getCurrentSession().load(Vendor.class, id);
        sessionFactory.getCurrentSession().delete(p);
        sessionFactory.getCurrentSession().flush();
        return p;

    }

    @Override
    public List<Vendor> getAll() {

        List<Vendor> e = sessionFactory.getCurrentSession().createCriteria(Vendor.class).list();
        sessionFactory.getCurrentSession().flush();
        sessionFactory.getCurrentSession().flush();

        return e;
    }

    @Override
    public Vendor getById(int id) {

        Vendor p = (Vendor) sessionFactory.getCurrentSession().get(Vendor.class, id);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

}
