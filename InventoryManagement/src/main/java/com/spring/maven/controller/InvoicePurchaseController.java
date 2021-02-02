/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dell
 */
@RestController
@RequestMapping("invoicePurchase")
public class InvoicePurchaseController {
    @RequestMapping("/create")
    public ModelAndView create() {

        return new ModelAndView("invoicePurchase/create");

    }

//    @RequestMapping(value = "/getProduct/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
//    public String getAllProduct(@PathVariable("id") int id) {
//        
//        System.out.println("...................... " + id);
//        GsonBuilder gson = new GsonBuilder();
//        Gson g = gson.create();
//        Product u=productService.getById(id);
//        return g.toJson(u);
//    }
    
    
}
