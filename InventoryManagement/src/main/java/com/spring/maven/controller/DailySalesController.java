/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.common.ICommonController;
import com.spring.maven.model.DailySales;
import com.spring.maven.model.Product;
import com.spring.maven.service.impl.IDailySalesService;
import com.spring.maven.service.impl.IProductService;
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
@RequestMapping(value = "/dailySales")
public class DailySalesController implements ICommonController<DailySales> {

    @Autowired
    IDailySalesService dailySalesService;

    @Autowired
    IProductService productService;

    @Autowired
    ISalesService salesService;

    @Override
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public ModelAndView create() {

        Map<String, Object> map = new HashMap<String, Object>();
        List<Product> pList = productService.getAll();
        map.put("pList", pList);

        return new ModelAndView("dailySales/create", "map", map);
    }

    @Override
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        DailySales p = dailySalesService.save(request);
        Map<String, Object> map = new HashMap<>();
        return new ModelAndView("redirect:/dailySales/view", "map", map);

    }

    @Override
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(ModelMap map, @PathVariable("id") int id) {
        DailySales p = dailySalesService.getById(id);
        map.addAttribute("p", p);
        return new ModelAndView("dailySales/update");

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {

        DailySales p = dailySalesService.update(request);
        return new ModelAndView("redirect:/dailySales/view");
//        return new ModelAndView("dailySales/update");
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(int id) {
        DailySales p = dailySalesService.delete(id);
        return new ModelAndView("redirect:/dailySales/view");

    }

    @Override
    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView getAll() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<DailySales> pList = dailySalesService.getAll();
        map.put("pList", pList);
        return new ModelAndView("dailySales/view", "map", map);

    }

//    @RequestMapping(value = "/getAllSales", method = RequestMethod.GET)
//    public List<Sales> getAllSales() {
//        List<Sales> eList = salesService.getAll();
//        GsonBuilder gson = new GsonBuilder();
//        Gson g = gson.create();
//        return eList;
//    }
//    @RequestMapping(value = "/search", method = RequestMethod.GET)
//    public ModelAndView getByMonthAndYear(HttpServletRequest request) {
//      
//        System.out.println(request.getParameter("month"));
//         Map<String, Object> map = new HashMap<>();
//         List<DailySales> sales = dailySalesService.getSalesByMonth(request.getParameter("month"), request.getParameter("year"));
//         map.put("sales", sales);
//        return new ModelAndView("dailySales/view", "map", map);
//    }
//    


}
