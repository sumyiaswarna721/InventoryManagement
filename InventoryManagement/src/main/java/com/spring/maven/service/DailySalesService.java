/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IDailySalesDAo;
import com.spring.maven.model.DailySales;
import com.spring.maven.model.Sales;
import com.spring.maven.service.impl.IDailySalesService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dell
 */
@Service(value = "dailySalesService")
public class DailySalesService implements IDailySalesService {

    @Autowired
    IDailySalesDAo dailySalesDAo;

    @Override
    public DailySales save(HttpServletRequest request) {

        int productCode = Integer.parseInt(request.getParameter("productCode"));
        String name = request.getParameter("name");
        String date = request.getParameter("date");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int buyPrice = Integer.parseInt(request.getParameter("buyPrice"));
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        int total = Integer.parseInt(request.getParameter("total"));
        
        DailySales p = new DailySales();
        p.setProductCode(productCode);
        p.setQuantity(quantity);
        p.setBuyPrice(buyPrice);
        p.setSellPrice(sellPrice);
        p.setDate(date);
        p.setTotal(total);

        return dailySalesDAo.save(p);

    }

    @Override
    public DailySales update(HttpServletRequest request) {

        int id = Integer.parseInt(request.getParameter("id"));

        int productCode = Integer.parseInt(request.getParameter("productCode"));
        String name = request.getParameter("name");
      
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int buyPrice = Integer.parseInt(request.getParameter("buyPrice"));
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
       
//        int total = Integer.parseInt(request.getParameter("total"));

        DailySales p = new DailySales();
        p.setProductCode(productCode);
        p.setName(name);
        p.setQuantity(quantity);
        p.setBuyPrice(buyPrice);
        p.setBuyPrice(sellPrice);

        return dailySalesDAo.save(p);
    }

    @Override
    public DailySales delete(int id) {

        return dailySalesDAo.delete(id);
    }

    @Override
    public List<DailySales> getAll() {

        List<DailySales> pList = dailySalesDAo.getAll();

        return pList;
    }

    @Override
    public DailySales getById(int id) {

        return dailySalesDAo.getById(id);
    }

}
