/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.dao.impl;

import com.spring.maven.common.ICommonDAO;
import com.spring.maven.model.Purchase;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Dell
 */
public interface IPurchaseDAO extends ICommonDAO<Purchase>{

    public List<Purchase> searchExpenditure(HttpServletRequest request);
    
    public Purchase searchByName(String name);
   
    
}
