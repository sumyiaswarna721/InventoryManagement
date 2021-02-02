/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.model.Product;
import com.spring.maven.service.impl.IProductService;
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
@RequestMapping(value = "client")
public class ClientInController {
    
    @Autowired
    IProductService productService;

    @RequestMapping("/clientIn")
    public ModelAndView clientIn() {
        return new ModelAndView("client/clientIn");
    }
     @RequestMapping("/otp")
    public ModelAndView otp() {
        return new ModelAndView("client/otp");
    }
    @RequestMapping("/order")
    public ModelAndView order() {
          Map<String, Object> map = new HashMap<String, Object>();
        List<Product> pList = productService.getAll();
        map.put("pList", pList); 
        return new ModelAndView("client/order", "map", map);
     
    }
    @RequestMapping("/orderList")
    public ModelAndView orderList() {
        
        return new ModelAndView("client/orderList");
    }
    @RequestMapping("/success")
    public ModelAndView success() {

        return new ModelAndView("client/success");
    }
    
}
