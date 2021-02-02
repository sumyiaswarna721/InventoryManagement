/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.common.ICommonController;
import com.spring.maven.dao.impl.ISalesDAO;
import com.spring.maven.model.IncomeExpenditure;
import com.spring.maven.model.Sales;
import com.spring.maven.service.impl.IIncomeExpenditureService;
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
@RequestMapping(value = "/incomeExpenditure")
public class IncomeExpenditureController implements ICommonController<IncomeExpenditure> {

    @Autowired
    IProductService productService;
    @Autowired
    IIncomeExpenditureService incomeExpenditureService;
    
    @Autowired
    ISalesService salesService;
    
    @Autowired
    ISalesDAO salesDAO;

    @Override
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public ModelAndView create() {

        Map<String, Object> map = new HashMap<String, Object>();
        List<Sales> pList = salesService.getAll();
        map.put("pList", pList);

        return new ModelAndView("incomeExpenditure/create", "map", map);

    }

    @Override
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        IncomeExpenditure p = incomeExpenditureService.save(request);
        Map<String, Object> map = new HashMap<>();
        return new ModelAndView("redirect:/incomeExpenditure/view", "map", map);

    }

    @Override
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(ModelMap map, @PathVariable("id") int id) {
        IncomeExpenditure p = incomeExpenditureService.getById(id);
        map.addAttribute("p", p);
        return new ModelAndView("incomeExpenditure/update");

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {

        IncomeExpenditure p = incomeExpenditureService.update(request);
        return new ModelAndView("redirect:/incomeExpenditure/view");
//        return new ModelAndView("dailySales/update");
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(int id) {
        IncomeExpenditure p = incomeExpenditureService.delete(id);
        return new ModelAndView("redirect:/incomeExpenditure/view");

    }

    @Override
    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView getAll() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<IncomeExpenditure> pList = incomeExpenditureService.getAll();
        map.put("pList", pList);
        return new ModelAndView("incomeExpenditure/view", "map", map);

    }
//    @RequestMapping(value = "/rpt_1", method = RequestMethod.GET)
//    public List<Sales> dailyIncome(HttpServletRequest request) {
//        List<Sales> p = salesDAO.searchIncome(request);
//        //GsonBuilder gson = new GsonBuilder();
//        //Gson g = gson.create();
//        return p;
//
//    }

}
