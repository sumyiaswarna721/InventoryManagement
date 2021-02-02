/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IOrderDAO;
import com.spring.maven.model.Order;
import com.spring.maven.service.impl.IOrderService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dell
 */
@Service(value = "orderService")
public class OrderService implements IOrderService {

    IOrderDAO orderDAO;

    @Override
    public Order save(HttpServletRequest request) {

        int productCode = Integer.parseInt(request.getParameter("productCode"));
        String name = request.getParameter("name");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        Map<String, Object> map = new HashMap<>();
        Order p = new Order();

      
        p.setProductCode(productCode);
        p.setName(name);
        p.setQuantity(quantity);
        p.setSellPrice(sellPrice);

        return orderDAO.save(p);

    }

    @Override
    public Order update(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
         int productCode = Integer.parseInt(request.getParameter("productCode"));
        String name = request.getParameter("name");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        Map<String, Object> map = new HashMap<>();
        Order p = new Order();

        p.setProductCode(productCode);
        p.setName(name);
        p.setQuantity(quantity);
        p.setSellPrice(sellPrice);

        return orderDAO.update(p);

    }

    @Override
    public Order delete(int id) {

        return orderDAO.delete(id);
    }

    @Override
    public List<Order> getAll() {
        List<Order> pList = orderDAO.getAll();

        return pList;

    }

    @Override
    public Order getById(int id) {

        return orderDAO.getById(id);
    }

}
