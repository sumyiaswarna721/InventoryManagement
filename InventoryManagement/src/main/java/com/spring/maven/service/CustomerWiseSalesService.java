/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.ICustomerWiseSalesDAO;
import com.spring.maven.model.CustomerWiseSales;
import com.spring.maven.service.impl.ICustomerWiseSalesService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dell
 */
@Service(value = "customerWiseSalesService")
public class CustomerWiseSalesService implements ICustomerWiseSalesService {

    @Autowired
    ICustomerWiseSalesDAO customerWiseSalesDAO;

    @Override
    public CustomerWiseSales save(HttpServletRequest request) {

        int productCode = Integer.parseInt(request.getParameter("productCode"));
        String name = request.getParameter("name");
        String date = request.getParameter("date");
        String pname = request.getParameter("pname");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int buyPrice = Integer.parseInt(request.getParameter("buyPrice"));
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        int total = Integer.parseInt(request.getParameter("total"));

        CustomerWiseSales p = new CustomerWiseSales();
        p.setProductCode(productCode);
        p.setDate(date);
        p.setName(name);
        p.setPname(pname);
        p.setQuantity(quantity);
        p.setBuyPrice(buyPrice);
        p.setSellPrice(sellPrice);
        p.setTotal(total);

        return customerWiseSalesDAO.save(p);

    }

    @Override
    public CustomerWiseSales update(HttpServletRequest request) {

        int id = Integer.parseInt(request.getParameter("id"));
        int productCode = Integer.parseInt(request.getParameter("productCode"));
        String name = request.getParameter("name");
        String pname = request.getParameter("pname");
        String date = request.getParameter("date");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int buyPrice = Integer.parseInt(request.getParameter("buyPrice"));
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        int total = Integer.parseInt(request.getParameter("total"));

        CustomerWiseSales p = new CustomerWiseSales();
        p.setId(id);
        p.setProductCode(productCode);
        p.setDate(date);
        p.setName(name);
        p.setPname(pname);
        p.setQuantity(quantity);
        p.setBuyPrice(buyPrice);
        p.setSellPrice(sellPrice);
        p.setTotal(total);

        return customerWiseSalesDAO.save(p);
    }

    @Override
    public CustomerWiseSales delete(int id) {

        return customerWiseSalesDAO.delete(id);
    }

    @Override
    public List<CustomerWiseSales> getAll() {

        List<CustomerWiseSales> pList = customerWiseSalesDAO.getAll();

        return pList;
    }

    @Override
    public CustomerWiseSales getById(int id) {
        return customerWiseSalesDAO.getById(id);

    }

}
