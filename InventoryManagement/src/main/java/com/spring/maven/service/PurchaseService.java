/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IAllStockDAO;
import com.spring.maven.dao.impl.ICurrentStockDAO;
import com.spring.maven.dao.impl.IPurchaseDAO;
import com.spring.maven.dao.impl.IStockDAO;
import com.spring.maven.model.AllStock;
import com.spring.maven.model.CurrentStock;
import com.spring.maven.model.Purchase;
import com.spring.maven.model.Stock;
import com.spring.maven.service.impl.ICurrentStockService;
import com.spring.maven.service.impl.IPurchaseService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dell
 */
@Service(value = "purchaseService")
public class PurchaseService implements IPurchaseService {

    @Autowired
    IPurchaseDAO purchaseDAO;

    @Autowired
    IStockDAO stockDAO;
    
     @Autowired
    IAllStockDAO allStockDAO;

    @Autowired
    ICurrentStockDAO currentStockDAO;

    @Autowired
    ICurrentStockService currentStockService;
    private Object salesDAO;

    @Override
    public Purchase save(HttpServletRequest request) {

        String date = request.getParameter("date");
        String productCode = request.getParameter("productCode");
        System.out.println(productCode + "///////////////////////");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        int buyPrice = Integer.parseInt(request.getParameter("buyPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Integer total = (buyPrice * quantity);
        Map<String, Object> map = new HashMap<>();

        Purchase p = new Purchase();

        p.setDate(date);
        p.setProductCode(Integer.parseInt(productCode));
        p.setName(name);
        p.setDescription(description);
        p.setSellPrice(sellPrice);
        p.setBuyPrice(buyPrice);
        p.setQuantity(quantity);
        p.setTotal(total);

        Stock s = new Stock();
        s.setDate(date);
        s.setProductCode(Integer.parseInt(productCode));
        s.setName(name);
        s.setDescription(description);
        s.setQuantity(quantity);
        s.setBuyPrice(buyPrice);
        s.setSellPrice(sellPrice);
        s.setTotal(total);
        s.setStockAction("Purchase");
        stockDAO.save(s);
        
//        AllStock a = new AllStock();
//        a.setDate(date);
//        a.setProductCode(Integer.parseInt(productCode));
//        a.setName(name);
////        a.setDescription(description);
//        a.setQuantity(quantity);
//        a.setBuyPrice(buyPrice);
//        a.setSellPrice(sellPrice);
////        a.setTotal(total);
//        a.setStockAction("Purchase");
//        allStockDAO.save(a);

        CurrentStock cs = currentStockService.getByProductCode(Integer.parseInt(productCode));
        if (cs != null) {
            System.out.println("................................... " + cs.getProductCode() + " ///  " + cs.getId());

            cs.setId(cs.getId());
            cs.setQuantity(cs.getQuantity() + quantity);
            currentStockDAO.update(cs);
        } else {
            CurrentStock st = new CurrentStock();
            st.setDate(date);
            st.setProductCode(Integer.parseInt(productCode));
            st.setName(name);
            st.setDescription(description);
            st.setQuantity(quantity);
            st.setBuyPrice(buyPrice);
            st.setSellPrice(sellPrice);
//            st.setTotal(total);
            st.setStockAction("Purchase");
            currentStockDAO.save(st);
        }

        /*        check if a product exists in current_stock table
         if yes,update the stock after purchaseand sell
         if no, insert a new row with product and stock deatils in current_stock table 
         */
        return purchaseDAO.save(p);
    }

    @Override
    public Purchase update(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        
        String date = request.getParameter("date");
        String productCode = request.getParameter("productCode");
        System.out.println(productCode + "///////////////////////");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int sellPrice = Integer.parseInt(request.getParameter("sellPrice"));
        int buyPrice = Integer.parseInt(request.getParameter("buyPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Integer total = (buyPrice * quantity);
        Map<String, Object> map = new HashMap<>();

        Purchase p = new Purchase();

        p.setDate(date);
        p.setProductCode(Integer.parseInt(productCode));
        p.setName(name);
        p.setDescription(description);
        p.setSellPrice(sellPrice);
        p.setBuyPrice(buyPrice);
        p.setQuantity(quantity);
        p.setTotal(total);


       Stock s = new Stock();
        s.setDate(date);
        s.setProductCode(Integer.parseInt(productCode));
        s.setName(name);
        s.setDescription(description);
        s.setQuantity(quantity);
        s.setBuyPrice(buyPrice);
        s.setSellPrice(sellPrice);
        s.setTotal(total);
        
        s.setStockAction("Purchase");
        stockDAO.update(s);
        
        AllStock a = new AllStock();
        a.setDate(date);
        a.setProductCode(Integer.parseInt(productCode));
        a.setName(name);
//        a.setDescription(description);
        a.setQuantity(quantity);
        a.setBuyPrice(buyPrice);
        a.setSellPrice(sellPrice);
//        a.setTotal(total);
        
        s.setStockAction("Purchase");
        allStockDAO.update(a);

        /*        check if a product exists in current_stock table
         if yes,update the stock after purchaseand sell
         if no, insert a new row with product and stock deatils in current_stock table
         */
        return purchaseDAO.update(p);
    }

    @Override
    public Purchase delete(int id) {

        return purchaseDAO.delete(id);
    }

    @Override
    public List<Purchase> getAll() {
        List<Purchase> pList = purchaseDAO.getAll();

        return pList;

    }

    @Override
    public Purchase getById(int id) {
        return purchaseDAO.getById(id);
    }

    public CurrentStock getByProductCode(int productCode) {
        return currentStockService.getById(productCode);
    }

    @Override
    public List<Purchase> searchExpenditure(HttpServletRequest request) {

        return purchaseDAO.searchExpenditure(request);
    }
    @Override
      public int getTotal() {
        List<Purchase> p = purchaseDAO.getAll();
        int total = 0;
        for (int i = 0; i < p.size(); i++) {
            total += p.get(i).getTotal();
        }
        return total;
       
    } 
      
    public int getTotalPurchase() {
      
    List<Purchase> p = purchaseDAO.getAll();
        int total = 0;
        for (int i = 0; i < p.size(); i++) {
            total += p.get(i).getTotal();
            System.out.println(total);
        }
        System.out.println(total);
        return total;
    }

}
