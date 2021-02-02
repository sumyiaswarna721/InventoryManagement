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
public class IndexController {
    
   @RequestMapping("/")
   public ModelAndView home(){
       return new ModelAndView("home"); 
   }
  
    @RequestMapping("/about")
   public ModelAndView about(){
       return new ModelAndView("/home/about"); 
   }
     @RequestMapping("/blog")
   public ModelAndView blog(){
       return new ModelAndView("/home/blog"); 
   }
  
    }
     

