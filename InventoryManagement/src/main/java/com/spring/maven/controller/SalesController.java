/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.controller.impl.ISalesController;
import com.spring.maven.model.Product;
import com.spring.maven.model.Purchase;
import com.spring.maven.model.Sales;
import com.spring.maven.service.impl.IProductService;
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
 * @author B5
 */
@RestController
@RequestMapping(value = "/sales")
public class SalesController implements ISalesController {

    @Autowired
    ISalesService salesService;

    @Autowired
    IProductService productService;
    
//     @Autowired
//    IClientService clientService;
     @Autowired
     IPurchaseService purchaseService;

    @RequestMapping("/create")
    @Override
    
    
    public ModelAndView create() {

        Map<String, Object> map = new HashMap<String, Object>();
        List<Purchase> pList = purchaseService.getAll();
        map.put("pList", pList);
        return new ModelAndView("sales/create", "map", map);
    }

    @Override
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        Sales p = salesService.save(request);
        Map<String, Object> map = new HashMap<>();
        return new ModelAndView("redirect:/sales/view", "map", map);
    }

    @Override
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(ModelMap map, @PathVariable("id") int id) {
        Sales p = salesService.getById(id);
        map.addAttribute("p", p);
        return new ModelAndView("sales/invoice");

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {

        Sales p = salesService.update(request);
        return new ModelAndView("redirect:/sales/view");

    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        Sales p = salesService.delete(id);
        return new ModelAndView("redirect:/sales/view");

    }

    @Override
    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView getAll() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Sales> pList = salesService.getAll();
        map.put("pList", pList);
        return new ModelAndView("sales/view", "map", map);
    }

    @RequestMapping(value = "/rpt_create", method = RequestMethod.GET)
    public ModelAndView createRPT() {

        Map<String, Object> map = new HashMap<String, Object>();
        List<Product> pList = productService.getAll();
        map.put("pList", pList);

        return new ModelAndView("dailySales/create", "map", map);
    }

    @RequestMapping(value = "/rpt", method = RequestMethod.GET)
    public List<Sales> dailyReport(HttpServletRequest request) {
        List<Sales> p = salesService.searchReport(request);
        //GsonBuilder gson = new GsonBuilder();
        //Gson g = gson.create();
        return p;

    }
     @RequestMapping(value = "/cms", method = RequestMethod.GET)
    public List<Sales> cmsSales(HttpServletRequest request) {
        List<Sales> p = salesService.searchCmsReport(request);

        return p;

    }
     @RequestMapping(value = "/rpt_1", method = RequestMethod.GET)
    public Object dailyIncome(HttpServletRequest request) {
        String action = request.getParameter("action");
        if(action.equals("Income")){
           List<Sales> p = salesService.searchIncome(request);
           return p;
        }else{
            List<Purchase> p = purchaseService.searchExpenditure(request);
            return p;
        }
        
        //GsonBuilder gson = new GsonBuilder();
        //Gson g = gson.create();

    }

   
}
