/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IIncomeExpenditureDAO;
import com.spring.maven.model.IncomeExpenditure;
import com.spring.maven.service.impl.IIncomeExpenditureService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dell
 */
@Service(value = "incomeExpenditureService")
public class IncomeExpenditureService implements IIncomeExpenditureService {

    @Autowired
    IIncomeExpenditureDAO incomeExpenditureDAO;

    @Override
    public IncomeExpenditure save(HttpServletRequest request) {
        int productCode = Integer.parseInt(request.getParameter("productCode"));
        String name = request.getParameter("name");
        String date = request.getParameter("date");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        int total = (quantity * sellPrice);

        IncomeExpenditure p = new IncomeExpenditure();
        p.setProductCode(productCode);
        p.setName(name);
        p.setDate(date);
        p.setQuantity(quantity);
        p.setSellPrice(sellPrice);
        p.setTotal(total);

        return incomeExpenditureDAO.save(p);

    }

    @Override
    public IncomeExpenditure update(HttpServletRequest request) {

        int id = Integer.parseInt(request.getParameter("id"));
        int productCode = Integer.parseInt(request.getParameter("productCode"));
        String name = request.getParameter("name");
        String date = request.getParameter("date");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        int total = Integer.parseInt(request.getParameter("total"));

//        int total = Integer.parseInt(request.getParameter("total"));
        IncomeExpenditure p = new IncomeExpenditure();
        p.setProductCode(productCode);
        p.setName(name);
        p.setDate(date);
        p.setQuantity(quantity);
        p.setSellPrice(sellPrice);
        p.setTotal(total);
        return incomeExpenditureDAO.save(p);
    }

    @Override
    public IncomeExpenditure delete(int id) {
       
       return incomeExpenditureDAO.delete(id);
    }

    @Override
    public List<IncomeExpenditure> getAll() {
      
       List<IncomeExpenditure> pList = incomeExpenditureDAO.getAll();

        return pList;
    }

    @Override
    public IncomeExpenditure getById(int id) {
      
      return incomeExpenditureDAO.getById(id);
    }

}
