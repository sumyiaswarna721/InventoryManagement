/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.common.ICommonController;
import com.spring.maven.model.Client;
import com.spring.maven.model.CustomerWiseSales;
import com.spring.maven.service.impl.IClientService;
import com.spring.maven.service.impl.ICustomerWiseSalesService;
import com.spring.maven.service.impl.ISalesService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dell
 */
@RestController
@RequestMapping("/customerWiseSales")
public class CustomerWiseSalesController implements ICommonController<CustomerWiseSales> {

    @Autowired
    ISalesService salesService;

    @Autowired
    IClientService clientService;

    @Autowired
    ICustomerWiseSalesService customerWiseSalesService;

    @RequestMapping("/create")
    public ModelAndView create() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Client> pList = clientService.getAll();
        map.put("pList", pList);
        return new ModelAndView("customerWiseSales/create", "map", map);
    }

    @Override
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        CustomerWiseSales p = customerWiseSalesService.save(request);
        Map<String, Object> map = new HashMap<>();
        return new ModelAndView("redirect:/customerWiseSales/view", "map", map);
    }

    @Override
     @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(ModelMap map, int id) {
     CustomerWiseSales p = customerWiseSalesService.getById(id);
        map.addAttribute("p", p);
        return new ModelAndView("customerWiseSales/update");
    }

    @Override
     @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
     CustomerWiseSales p = customerWiseSalesService.update(request);
        return new ModelAndView("redirect:/customerWiseSales/view");
    }

    @Override
     @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(int id) {
      CustomerWiseSales p = customerWiseSalesService.delete(id);
        return new ModelAndView("redirect:/customerWiseSales/view");

    }

    @Override
    public ModelAndView getAll() {
      
     Map<String, Object> map = new HashMap<String, Object>();
        List<CustomerWiseSales> pList = customerWiseSalesService.getAll();
        map.put("pList", pList);
        return new ModelAndView("customerWiseSales/view", "map", map);

    }
}
