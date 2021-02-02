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
@RequestMapping
public class HomeController {
    @RequestMapping("/home")
    public ModelAndView index(){
        return new ModelAndView("home"); 
    }
     @RequestMapping("/common")
    public ModelAndView login(){
        return new ModelAndView("login"); 
    }
    
    
     @RequestMapping("/index1")
    public ModelAndView index1(){
        return new ModelAndView("index1"); 
    }
    
    @RequestMapping("/product")
    public ModelAndView index2(){
        return new ModelAndView("product/entryProduct"); 
    }
    @RequestMapping("/client")
    public ModelAndView index3(){
        return new ModelAndView("client/create"); 
    }
      @RequestMapping("/purchase")
    public ModelAndView index4(){
        return new ModelAndView("purchaseProduct/purchase"); 
    }
     @RequestMapping("/productList")
    public ModelAndView productList(){
        return new ModelAndView("productList/create"); 
    }
    @RequestMapping("/invoice")
    public ModelAndView invoice(){
        return new ModelAndView("invoice/create"); 
    }
    @RequestMapping("/sales")
    public ModelAndView sales(){
        return new ModelAndView("sales/create"); 
    }
    @RequestMapping("/stockReport")
    public ModelAndView stock(){
        return new ModelAndView("stockReport/create"); 
    }
     @RequestMapping("/dueReport")
    public ModelAndView dueReport(){
        return new ModelAndView("dueReport/create"); 
    }
     @RequestMapping("/salesReport")
    public ModelAndView salesReport(){
        return new ModelAndView("salesReport/create"); 
  }
    @RequestMapping("/view")
   public ModelAndView create(){
       return new ModelAndView("product/view"); 
 }
  
    
}
