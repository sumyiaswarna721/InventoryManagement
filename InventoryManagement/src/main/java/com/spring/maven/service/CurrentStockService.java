/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.ICurrentStockDAO;
import com.spring.maven.model.CurrentStock;
import com.spring.maven.service.impl.ICurrentStockService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dell
 */
@Service(value = "currentStockService")
public class CurrentStockService implements ICurrentStockService {

    @Autowired
    ICurrentStockDAO currentStockDAO;

    @Override
    public CurrentStock save(HttpServletRequest request) {

        String date = request.getParameter("date");
        int productCode = Integer.parseInt(request.getParameter("productCode"));
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int buyPrice = Integer.parseInt(request.getParameter("buyPrice"));
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        String stockAction = request.getParameter("stockAction");
//        Integer total = (sellPrice * quantity);

        CurrentStock p = new CurrentStock();

        p.setDate(date);
        p.setProductCode(productCode);
        p.setName(name);
        p.setDescription(description);
        p.setQuantity(quantity);
        p.setBuyPrice(buyPrice);
        p.setSellPrice(sellPrice);
//        p.setTotal(total);
        p.setStockAction(stockAction);

        return currentStockDAO.save(p);
    }

    @Override
    public CurrentStock update(HttpServletRequest request) {

        int id = Integer.parseInt(request.getParameter("id"));
        String date = request.getParameter("date");
        String productCode = request.getParameter("productCode");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int buyPrice = Integer.parseInt(request.getParameter("buyPrice"));
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        String stockAction = request.getParameter("stockAction");
//        double total = (sellPrice * quantity);

        CurrentStock p = new CurrentStock();

        p.setDate(date);
        p.setProductCode(Integer.parseInt(productCode));
        p.setName(name);
        p.setDescription(description);
        p.setQuantity(quantity);
        p.setBuyPrice(buyPrice);
        p.setSellPrice(sellPrice);
        p.setStockAction(stockAction);
//        p.setTotal(total);

        return currentStockDAO.update(p);
    }

    @Override
    public CurrentStock delete(int id) {

        return currentStockDAO.delete(id);
    }

    @Override
    public List<CurrentStock> getAll() {

        return currentStockDAO.getAll();
    }

    @Override
    public CurrentStock getById(int id) {
        return currentStockDAO.getById(id);

    }

    @Override
    public CurrentStock getByProductCode(int id) {
        return currentStockDAO.getByProductCode(id);

    }

    @Override
    public List<CurrentStock> searchStockReport(HttpServletRequest request) {
        return currentStockDAO.searchStockReport(request);
    }

}
