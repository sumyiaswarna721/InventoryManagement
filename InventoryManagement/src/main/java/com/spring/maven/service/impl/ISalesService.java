/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service.impl;

import com.spring.maven.common.ICommonService;
import com.spring.maven.model.Sales;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author B5
 */
public interface ISalesService extends ICommonService<Sales> {

    public List<Sales> searchReport(HttpServletRequest request);
    public List<Sales> searchCmsReport(HttpServletRequest request);

//    public List<Sales> searchCmsReport(HttpServletRequest request);

    public List<Sales> searchIncome(HttpServletRequest request);

    public int getTotalSales();
 

//    public int getTotal();

    public int getTotal();

}
