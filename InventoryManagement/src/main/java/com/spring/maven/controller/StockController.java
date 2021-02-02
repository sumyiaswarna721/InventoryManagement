/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.controller.impl.IStockController;
import com.spring.maven.model.Stock;
import com.spring.maven.service.impl.IPurchaseService;
import com.spring.maven.service.impl.ISalesService;
import com.spring.maven.service.impl.IStockService;
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
@RequestMapping(value = "stock")
public class StockController implements IStockController {

    @Autowired
    IStockService stockService;

    @Autowired
    IPurchaseService purchaseService;

    @Autowired
    ISalesService salesService;

    @Override
    @RequestMapping(value = "/create")
    public ModelAndView create() {
//        Map<String, Object> map = new HashMap<String, Object>();
//        List<Stock> pList = stockService.getAll();
//        map.put("pList", pList);
//        return new ModelAndView("stock/create", "map", map);

        return new ModelAndView("stock/create");
    }

    @Override
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        Stock p = stockService.save(request);
        Map<String, Object> map = new HashMap<>();
        return new ModelAndView("redirect:/stock/view", "map", map);
    }

    @Override
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(ModelMap map, @PathVariable("id") int id) {
        Stock p = stockService.getById(id);
        map.addAttribute("p", p);
        return new ModelAndView("stock/update");
    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {

        Stock p = stockService.update(request);
        return new ModelAndView("redirect:/stock/view");
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {

        Stock p = stockService.delete(id);
        return new ModelAndView("redirect:/stock/view");

    }

    @Override
    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView getAll() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Stock> pList = stockService.getAll();
        map.put("pList", pList);
//        List<Purchase> pList = purchaseService.getAll();
//        List<Sales> sList = salesService.getAll();
//        map.put("pList", pList);
//        map.put("sList", sList);
        return new ModelAndView("stock/view", "map", map);
    }

}
