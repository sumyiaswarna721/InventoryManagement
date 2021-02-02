/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.ISalesDAO;
import com.spring.maven.model.Sales;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author B5
 */
@Repository(value = "salesDAO")
@Transactional
public class SalesDAO implements ISalesDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Sales save(Sales t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Sales update(Sales t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Sales delete(int id) {
        Sales p = (Sales) sessionFactory.getCurrentSession().load(Sales.class, id);
        sessionFactory.getCurrentSession().delete(p);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

    @Override
    public List<Sales> getAll() {

        List<Sales> e = sessionFactory.getCurrentSession().createCriteria(Sales.class).list();
        sessionFactory.getCurrentSession().flush();
        sessionFactory.getCurrentSession().flush();

        return e;
    }

    @Override
    public Sales getById(int id) {

        Sales p = (Sales) sessionFactory.getCurrentSession().get(Sales.class, id);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

    public Sales getByProductCode(int productCode) {
        Sales p = (Sales) sessionFactory.getCurrentSession().get(Sales.class, productCode);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

    @Override
    public List<Sales> searchReport(HttpServletRequest request) {
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        String productCode = request.getParameter("productCode");
        System.out.println(from);
        System.out.println(to);
        System.out.println(productCode);
        String hql = "select i from sales i where i.productCode = '" + productCode + "' AND i.date between :start and :end";
        // String hql = "from sales";
        Query q = sessionFactory.getCurrentSession().createQuery(hql);
        //q.setParameter("productCode", productCode);
        q.setParameter("start", from);
        q.setParameter("end", to);

        List<Sales> sl = q.list();
        for (Sales sl1 : sl) {
            System.out.println(sl1.getName() + " ................");
        }

        return q.list();

    }

    @Override
    public List<Sales> searchCmsReport(HttpServletRequest request) {

        String pname = request.getParameter("cname");
        System.out.println(".............................  " + pname);

        String hql = "from sales where pname = '" + pname + "'";
        // String hql = "from sales";
        Query q = sessionFactory.getCurrentSession().createQuery(hql);
        List<Sales> sl = q.list();
        for (Sales sl1 : sl) {
            System.out.println(sl1.getName() + " ................");
        }

        return q.list();

    }

    @Override
    public List<Sales> searchIncome(HttpServletRequest request) {
    
        String date = request.getParameter("date");
        System.out.println(".............................  " + date);

        String hql = "from sales where date = '" + date + "'";
        // String hql = "from sales";
        Query q = sessionFactory.getCurrentSession().createQuery(hql);
        List<Sales> sl = q.list();
        for (Sales sl1 : sl) {
            System.out.println(sl1.getName() + " ................");
        }

        return q.list();  
    
    }


   
   

       
}
