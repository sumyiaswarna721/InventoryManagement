/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service.impl;

import com.spring.maven.common.ICommonService;
import com.spring.maven.model.Purchase;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Dell
 */
public interface IPurchaseService extends ICommonService<Purchase>{

    public List<Purchase> searchExpenditure(HttpServletRequest request);

//    public int getTotal();

    public int getTotal();
     public int getTotalPurchase();
}
