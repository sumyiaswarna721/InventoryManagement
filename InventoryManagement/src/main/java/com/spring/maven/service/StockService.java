/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IStockDAO;
import com.spring.maven.model.Stock;
import com.spring.maven.service.impl.IStockService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dell
 */
@Service(value = "stockService")
public class StockService implements IStockService {

    @Autowired
    IStockDAO stockDAO;

    @Override
    public Stock save(HttpServletRequest request) {

        String date = request.getParameter("date");
        String productCode = request.getParameter("productCode");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int buyPrice = Integer.parseInt(request.getParameter("buyPrice"));
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        Integer total = (sellPrice * quantity);
        String stockAction = request.getParameter("stockAction");

        Stock p = new Stock();

        p.setDate(date);
        p.setStockAction(stockAction);
        p.setProductCode(Integer.parseInt(productCode));
        p.setName(name);
        p.setDescription(description);
        p.setQuantity(quantity);
        p.setBuyPrice(buyPrice);
        p.setSellPrice(sellPrice);
        p.setTotal(total);
        return stockDAO.save(p);
    }

    @Override
    public Stock update(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        String date = request.getParameter("date");
        String stockAction = request.getParameter("stockAction");
        int productCode = Integer.parseInt(request.getParameter("productCode"));
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int buyPrice = Integer.parseInt(request.getParameter("buyPrice"));
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));

        Stock p = new Stock();

        p.setDate(date);
        p.setStockAction(stockAction);
        p.setProductCode(productCode);
        p.setName(name);
        p.setDescription(description);
        p.setQuantity(quantity);
        p.setBuyPrice(buyPrice);
        p.setSellPrice(sellPrice);
        p.setStockAction(stockAction);

        return stockDAO.update(p);
    }

    @Override
    public Stock delete(int id) {
        return stockDAO.delete(id);
    }

    @Override
    public List<Stock> getAll() {
        return stockDAO.getAll();
    }

    @Override
    public Stock getById(int id) {
        return stockDAO.getById(id);
    }

}
