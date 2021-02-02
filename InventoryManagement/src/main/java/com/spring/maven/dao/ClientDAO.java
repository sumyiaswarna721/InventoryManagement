/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao;

import com.spring.maven.dao.impl.IClientDAO;
import com.spring.maven.model.Client;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dell
 */
@Repository(value = "clientDAO")
@Transactional
public class ClientDAO implements IClientDAO{

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Client save(Client t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Client update(Client t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Client delete(int id) {
     

        Client p = (Client) sessionFactory.getCurrentSession().load(Client.class, id);
        sessionFactory.getCurrentSession().delete(p);
        sessionFactory.getCurrentSession().flush();
        return p;
    }

    @Override
    public List<Client> getAll() {
       
        List<Client> e = sessionFactory.getCurrentSession().createCriteria(Client.class).list();
        sessionFactory.getCurrentSession().flush();
        sessionFactory.getCurrentSession().flush();

        return e;
    }

    @Override
    public Client getById(int id) {
       

        Client p = (Client) sessionFactory.getCurrentSession().get(Client.class, id);
        sessionFactory.getCurrentSession().flush();
        return p;
    }
    
    @Override
    public Client checkOTP(String phone) {
        String hql = "from client where phone = :phone";
        Query q = sessionFactory.getCurrentSession().createQuery(hql);
        q.setParameter("phone", phone);
        
        Client t = (Client) q.uniqueResult();
        if(t != null){
            return t;
            
        }else{
            return null;
        }
    }
    
//    public Client checkName(String pname) {
//        String hql = "from client where pname = :pname";
//        Query q = sessionFactory.getCurrentSession().createQuery(hql);
//        q.setParameter("pname", pname);
//        
//        Client t = (Client) q.uniqueResult();
//        if(t != null){
//            return t;
//            
//        }else{
//            return null;
//        }
//    }



}
