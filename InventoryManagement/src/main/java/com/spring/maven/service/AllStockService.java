/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IAllStockDAO;
import com.spring.maven.model.AllStock;
import com.spring.maven.service.impl.IAllStockService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dell
 */
@Service(value = "allStockService")
public class AllStockService implements IAllStockService {

    @Autowired
    IAllStockDAO allStockDAO;

    @Override
    public AllStock save(HttpServletRequest request) {

        String date = request.getParameter("date");
        int productCode = Integer.parseInt(request.getParameter("productCode"));
        String name = request.getParameter("name");
//        String description = request.getParameter("description");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int buyPrice = Integer.parseInt(request.getParameter("buyPrice"));
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        String stockAction = request.getParameter("stockAction");
//        Integer total = (sellPrice * quantity);

        AllStock p = new AllStock();

        p.setDate(date);
        p.setProductCode(productCode);
        p.setName(name);
//        p.setDescription(description);
        p.setQuantity(quantity);
        p.setBuyPrice(buyPrice);
        p.setSellPrice(sellPrice);
//        p.setTotal(total);
        p.setStockAction(stockAction);

        return allStockDAO.save(p);
    }

    @Override
    public AllStock update(HttpServletRequest request) {

        int id = Integer.parseInt(request.getParameter("id"));
        String date = request.getParameter("date");
        String productCode = request.getParameter("productCode");
        String name = request.getParameter("name");
//        String description = request.getParameter("description");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int buyPrice = Integer.parseInt(request.getParameter("buyPrice"));
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        String stockAction = request.getParameter("stockAction");
//        double total = (sellPrice * quantity);

        AllStock p = new AllStock();

        p.setDate(date);
        p.setProductCode(Integer.parseInt(productCode));
        p.setName(name);
//        p.setDescription(description);
        p.setQuantity(quantity);
        p.setBuyPrice(buyPrice);
        p.setSellPrice(sellPrice);
        p.setStockAction(stockAction);
//        p.setTotal(total);

        return allStockDAO.update(p);
    }

    @Override
    public AllStock delete(int id) {

        return allStockDAO.delete(id);
    }

    @Override
    public List<AllStock> getAll() {

        return allStockDAO.getAll();
    }

    @Override
    public AllStock getById(int id) {
        return allStockDAO.getById(id);

    }

//    public AllStock getByProductCode(int id) {
//        return allStockDAO.getByProductCode(id);
//
//    }

    @Override
    public AllStock getByProductCode(int parseInt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   

}

