/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.dao.impl.IPurchaseDAO;
import com.spring.maven.model.Order;
import com.spring.maven.model.Purchase;
import com.spring.maven.service.impl.IOrderService;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dell
 */
@RestController
@RequestMapping(value = "/order")
public class OrderController {
    
    @Autowired
    IPurchaseDAO purchaseDao;
    
    @Autowired
    IOrderService orderService;
    
    
    @RequestMapping(value = "/searchProduct", method = RequestMethod.POST)
    public ModelAndView searchByName(HttpServletRequest request){
        Map<String, Object> map = new HashMap<String, Object>();
        String name = request.getParameter("name");
        
        Purchase p = purchaseDao.searchByName(name);
//        System.out.println("hi..." + p.getName());
        p.getName();
        map.put("p", p);
        return new ModelAndView("/client/order", "map", map);
        
    }
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        Order p = orderService.save(request);
        Map<String, Object> map = new HashMap<>();
        return new ModelAndView("redirect:/client/orderList", "map", map);
    }

    
    }
    
    
    

