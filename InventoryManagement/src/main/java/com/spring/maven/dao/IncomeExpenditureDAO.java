/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.IIncomeExpenditureDAO;
import com.spring.maven.model.IncomeExpenditure;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dell
 */
@Repository(value = "incomeExpenditureDAO")
@Transactional
public class IncomeExpenditureDAO implements IIncomeExpenditureDAO{

    
    @Autowired
    SessionFactory sessionFactory;

    
    @Override
    public IncomeExpenditure save(IncomeExpenditure t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    
    }

    @Override
    public IncomeExpenditure update(IncomeExpenditure t) {
      
      sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public IncomeExpenditure delete(int id) {
        
    
        IncomeExpenditure p = (IncomeExpenditure) sessionFactory.getCurrentSession().load(IncomeExpenditure.class, id);
        sessionFactory.getCurrentSession().delete(p);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

    @Override
    public List<IncomeExpenditure> getAll() {
       
     List<IncomeExpenditure> e = sessionFactory.getCurrentSession().createCriteria(IncomeExpenditure.class).list();
        sessionFactory.getCurrentSession().flush();
        sessionFactory.getCurrentSession().flush();

        return e;
    }

    @Override
    public IncomeExpenditure getById(int id) {
    
         IncomeExpenditure p = (IncomeExpenditure) sessionFactory.getCurrentSession().get(IncomeExpenditure.class, id);
        sessionFactory.getCurrentSession().flush();
        return p;
    
    }
//    public List<IncomeExpenditure> searchIncome(HttpServletRequest request) {
//    
//        String date = request.getParameter("date");
//        System.out.println(".............................  " + date);
//
//        String hql = "from incomeExpenditure where date = '" + date + "'";
//        // String hql = "from sales";
//        Query q = sessionFactory.getCurrentSession().createQuery(hql);
//        List<IncomeExpenditure> sl = q.list();
//        for (IncomeExpenditure sl1 : sl) {
//            System.out.println(sl1.getName() + " ................");
//        }
//
//        return q.list();  
//    
//    }
    
}
