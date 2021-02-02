/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.model.Sales;
import com.spring.maven.service.impl.IProfitService;
import com.spring.maven.service.impl.IPurchaseService;
import com.spring.maven.service.impl.ISalesService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dell
 */
@RestController
@RequestMapping
public class DashboardController {

    @Autowired
    ISalesService salesService;

    @Autowired
    IPurchaseService purchaseService;

    @Autowired
    IProfitService profitService;

    @RequestMapping("/dashboard")
    public ModelAndView index() {

        Map<String, Object> map = new HashMap<String, Object>();
        List<Sales> sList = salesService.getAll();
        int total = salesService.getTotalSales();
        int total1 = purchaseService.getTotalPurchase();
        int profit = salesService.getTotal();
        System.out.println(total);
        map.put("total", total);
//        System.out.println(buyingCost);
//        System.out.println(serviceCost);
        map.put("total1", total1);
//        map.put("serviceCost", serviceCost);
        map.put("sList", sList);
        return new ModelAndView("dashboard", "map", map);
    }
}
