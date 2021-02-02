/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IAllStockDAO;
import com.spring.maven.dao.impl.ICurrentStockDAO;
import com.spring.maven.dao.impl.ISalesDAO;
import com.spring.maven.dao.impl.IStockDAO;
import com.spring.maven.model.CurrentStock;
import com.spring.maven.model.Sales;
import com.spring.maven.model.Stock;
import com.spring.maven.service.impl.ICurrentStockService;
import com.spring.maven.service.impl.ISalesService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dell
 */
@Service(value = "salesService")
public class SalesService implements ISalesService {

    @Autowired
    ISalesDAO salesDAO;

    @Autowired
    IStockDAO stockDAO;

    @Autowired
    IAllStockDAO allStockDAO;

    @Autowired
    ICurrentStockDAO currentStockDAO;

    @Autowired
    ICurrentStockService currentStockService;
    private Object purchaseDAO;

    @Override
    public Sales save(HttpServletRequest request) {
        String date = request.getParameter("date");
        int productCode = Integer.parseInt(request.getParameter("productCode"));
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int buyPrice = Integer.parseInt(request.getParameter("buyPrice"));
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        Integer total = (sellPrice * quantity);

        String cname = request.getParameter("cname");
        String pname = request.getParameter("pname");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String city = request.getParameter("city");

        Sales p = new Sales();
        p.setDate(date);
        p.setProductCode(productCode);
        p.setName(name);
        p.setDescription(description);
        p.setQuantity(quantity);
        p.setBuyPrice(buyPrice);
        p.setSellPrice(sellPrice);
        p.setTotal(total);

        p.setCname(cname);
        p.setPname(pname);
        p.setPhone(phone);
        p.setEmail(email);
        p.setAddress(address);
        p.setCity(city);

        Stock s = new Stock();
        s.setDate(date);
        s.setProductCode(productCode);
        s.setName(name);
        s.setDescription(description);
        s.setQuantity(quantity);
        s.setBuyPrice(buyPrice);
        s.setSellPrice(sellPrice);
        s.setTotal(total);
        s.setStockAction("Sales");
        System.out.println(productCode + "....................................");
        stockDAO.save(s);

        CurrentStock cs = currentStockService.getByProductCode(productCode);
        if (cs != null) {
            System.out.println("................................... " + cs.getProductCode() + " ///  " + cs.getId());

            cs.setId(cs.getId());
            cs.setQuantity(cs.getQuantity() - quantity);
            currentStockDAO.update(cs);
        } else {
            CurrentStock st = new CurrentStock();
            st.setDate(date);
            st.setProductCode(productCode);
            st.setName(name);
            st.setDescription(description);
            st.setQuantity(quantity);
            st.setBuyPrice(buyPrice);
            st.setSellPrice(sellPrice);
//            st.setTotal(total);
            st.setStockAction("Sales");
            currentStockDAO.save(st);
        }
        return salesDAO.save(p);
    }

    @Override
    public Sales update(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        String date = request.getParameter("date");
        int productCode = Integer.parseInt(request.getParameter("productCode"));
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int buyPrice = Integer.parseInt(request.getParameter("buyPrice"));
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));

        Sales p = new Sales();
        p.setId(id);
        p.setDate(date);
        p.setProductCode(productCode);
        p.setName(name);
        p.setDescription(description);
        p.setQuantity(quantity);
        p.setBuyPrice(buyPrice);
        p.setSellPrice(sellPrice);

        return salesDAO.update(p);

    }

    @Override
    public Sales delete(int id) {

        return salesDAO.delete(id);
    }

    @Override
    public List<Sales> getAll() {
        return salesDAO.getAll();
    }

    @Override
    public Sales getById(int id) {

        return salesDAO.getById(id);
    }

    @Override
    public List<Sales> searchReport(HttpServletRequest request) {
        return salesDAO.searchReport(request);
    }

    @Override
    public List<Sales> searchCmsReport(HttpServletRequest request) {
        return salesDAO.searchCmsReport(request);
    }

    @Override
    public List<Sales> searchIncome(HttpServletRequest request) {
        return salesDAO.searchIncome(request);

    }
//
    @Override
    public int getTotal() {
        List<Sales> p = salesDAO.getAll();
        int total = 0;
        for (int i = 0; i < p.size(); i++) {
            total += p.get(i).getTotal();
        }
        return total;

    }
    
//    public int getTotalSales() {
//        List<Sales> p = salesDAO.getAll();
//        int total = 0;
//        for (int i = 0; i < p.size(); i++) {
//            total += p.get(i).getTotalSales();
//            System.out.println(total);
//        }
//        System.out.println(total);
//        return total;
//    }

    @Override
    public int getTotalSales() {
      
    List<Sales> p = salesDAO.getAll();
        int total = 0;
        for (int i = 0; i < p.size(); i++) {
            total += p.get(i).getTotal();
            System.out.println(total);
        }
        System.out.println(total);
        return total;
    }


}
