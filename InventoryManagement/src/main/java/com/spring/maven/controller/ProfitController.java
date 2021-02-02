/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.controller.impl.IProfitController;
import com.spring.maven.model.Profit;
import com.spring.maven.service.impl.IProfitService;
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
@RequestMapping(value = "/profit")
public class ProfitController implements IProfitController {

    @Autowired
    IProfitService profitService;
//    @Autowired
//    IAssignAccountServices assignAccountServices;
    @Autowired
    ISalesService salesService;
    
    @Autowired
    IPurchaseService purchaseService;
 

    @Override
    @RequestMapping(value = "/create")
    public ModelAndView create() {
        Map<String, Object> map = new HashMap<String, Object>();
        int total = salesService.getTotal();
        int total1 = purchaseService.getTotal();
        
        map.put("total", total);
        map.put("total1", total1);
        return new ModelAndView("profit/create", "map", map);
    }

    @Override
    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView getAll() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Profit> pList = profitService.getAll();
      
        map.put("pList", pList);
       
        return new ModelAndView("profit/view", "map", map);
    }

    @Override
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        List<Profit> p = profitService.saveProfits(request);
        if (p != null) {
            return new ModelAndView("profit/done");
        } else {
            return new ModelAndView("profit/success");
        }

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        Profit p = profitService.update(request);
//        return new ModelAndView("redirect:/profit/view");
        return new ModelAndView("profit/update");
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        Profit p = profitService.delete(id);
        return new ModelAndView("redirect:/profit/view");
    }

    @Override
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(ModelMap map, @PathVariable("id") int id) {
        Profit p = profitService.getById(id);
        map.addAttribute("p", p);
        return new ModelAndView("profit/update");
    }

}

