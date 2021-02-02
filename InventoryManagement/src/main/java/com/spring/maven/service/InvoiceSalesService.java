/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IInvoiceSalesDAO;
import com.spring.maven.model.InvoiceSales;
import com.spring.maven.service.impl.IInvoiceSalesService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dell
 */
@Service(value = "invoiceSalesService")
public class InvoiceSalesService implements IInvoiceSalesService {

    @Autowired
    IInvoiceSalesDAO invoiceSalesDAO;

    @Override
    public InvoiceSales save(HttpServletRequest request) {

        String date = request.getParameter("date");
        String cname = request.getParameter("cname");
        String pname = request.getParameter("pname");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String unit = request.getParameter("unit");
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int total = (sellPrice * quantity);

        InvoiceSales p = new InvoiceSales();

        p.setDate(date);
        p.setCname(cname);
        p.setPname(pname);
        p.setEmail(email);
        p.setAddress(address);
        p.setPhone(phone);
        p.setName(name);
        p.setDescription(description);
        p.setUnit(unit);
        p.setSellPrice(sellPrice);
        p.setQuantity(quantity);
        p.setTotal(total);

        return invoiceSalesDAO.save(p);

    }

    @Override
    public InvoiceSales update(HttpServletRequest request) {

        int id = Integer.parseInt(request.getParameter("id"));
        String date = request.getParameter("date");
        String cname = request.getParameter("cname");
        String pname = request.getParameter("pname");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String unit = request.getParameter("unit");
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int total = Integer.parseInt(request.getParameter("total"));

        InvoiceSales p = new InvoiceSales();

        p.setDate(date);
        p.setCname(cname);
        p.setPname(pname);
        p.setEmail(email);
        p.setAddress(address);
        p.setPhone(phone);
        p.setName(name);
        p.setDescription(description);
        p.setUnit(unit);
        p.setSellPrice(sellPrice);
        p.setQuantity(quantity);
        p.setTotal(total);

        return invoiceSalesDAO.save(p);

    }

    @Override
    public InvoiceSales delete(int id) {
        return invoiceSalesDAO.delete(id);

    }

    @Override
    public List<InvoiceSales> getAll() {

        List<InvoiceSales> pList = invoiceSalesDAO.getAll();

        return pList;
    }

    @Override
    public InvoiceSales getById(int id) {

        return invoiceSalesDAO.getById(id);
    }

}
