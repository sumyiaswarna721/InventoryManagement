/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.ICurrentStockDAO;
import com.spring.maven.model.CurrentStock;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dell
 */
@Repository(value = "currentStockDAO")
@Transactional
public class CurrentStockDAO implements ICurrentStockDAO{
  
     @Autowired
    SessionFactory sessionFactory;

    @Override
    public CurrentStock save(CurrentStock t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public CurrentStock update(CurrentStock t) {
          sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public CurrentStock delete(int id) {
        CurrentStock p = (CurrentStock) sessionFactory.getCurrentSession().load(CurrentStock.class, id);
        sessionFactory.getCurrentSession().delete(p);
        sessionFactory.getCurrentSession().flush();
        return p;
    
    }

    @Override
    public List<CurrentStock> getAll() {
    
         List<CurrentStock> e = sessionFactory.getCurrentSession().createCriteria(CurrentStock.class).list();
        sessionFactory.getCurrentSession().flush();
        sessionFactory.getCurrentSession().flush();

        return e;
    
    }

    @Override
    public CurrentStock getById(int id) {
    
       
        CurrentStock p = (CurrentStock) sessionFactory.getCurrentSession().get(CurrentStock.class, id);
        sessionFactory.getCurrentSession().flush();
        return p; 
    
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

     @Override
    public CurrentStock getByProductCode(int productCode){
        String hql = "from currentStock where productCode = :productCode";
        
        
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setParameter("productCode", productCode);
        
        CurrentStock cs= (CurrentStock) query.uniqueResult();
        
      
        //sessionFactory.getCurrentSession().flush();
        if(cs != null){
            System.out.println("not null");
             //return null;
        return cs;
        }else{
        System.out.println("null");
        return null;
        }
        
    }
     @Override
       public List<CurrentStock> searchStockReport(HttpServletRequest request) {

        String name = request.getParameter("name");
        System.out.println(".............................  " + name);

        String hql = "from currentStock where productCode = '" + name + "'";
        // String hql = "from sales";
        Query q = sessionFactory.getCurrentSession().createQuery(hql);
        List<CurrentStock> sl = q.list();
        for (CurrentStock sl1 : sl) {
            System.out.println(sl1.getName() + " ................");
        }

        return q.list();

    }
}
