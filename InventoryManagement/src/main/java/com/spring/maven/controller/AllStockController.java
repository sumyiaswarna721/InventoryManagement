/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.controller.impl.ICurrentStockController;
import com.spring.maven.model.AllStock;
import com.spring.maven.model.CurrentStock;
import com.spring.maven.service.impl.IAllStockService;
import com.spring.maven.service.impl.ICurrentStockService;
import com.spring.maven.service.impl.IPurchaseService;
import com.spring.maven.service.impl.ISalesService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dell
 */
@RestController
@RequestMapping(value = "allStock")
public class AllStockController implements ICurrentStockController{

     @Autowired
     IAllStockService allStockService;
     
     
    @Autowired
    IPurchaseService purchaseService;

    @Autowired
    ISalesService salesService;
    
    
    @Autowired
    ICurrentStockService currentStockService;
    
    @Override
     @RequestMapping(value = "/create")
    public ModelAndView create() {
       
      return new ModelAndView("allStock/create");
    }

    @Override
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        AllStock p = allStockService.save(request);
        Map<String, Object> map = new HashMap<>();
        return new ModelAndView("redirect:/allStock/view", "map", map);
    }

    @Override
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(ModelMap map, @PathVariable("id") int id) {
      AllStock p = allStockService.getById(id);
        map.addAttribute("p", p);
        return new ModelAndView("allStock/update");   
    
    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
       AllStock p = allStockService.update(request);
        return new ModelAndView("redirect:/allStock/view");
    
    }

    @Override
     @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
       AllStock p = allStockService.delete(id);
        return new ModelAndView("redirect:/allStock/view");
    
    }

    @Override
     @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView getAll() {
       Map<String, Object> map = new HashMap<String, Object>();
        List<CurrentStock> pList = currentStockService.getAll();
        map.put("pList", pList);
     return new ModelAndView("allStock/create", "map", map);
     
    }
    
//     @RequestMapping(value = "/cms", method = RequestMethod.GET)
//    public List<AllStock> cmsSales(HttpServletRequest request) {
//        List<AllStock> p = allStockService.searchStockReport(request);
//
//        return p;
//
//    }
}
