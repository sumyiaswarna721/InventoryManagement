                                            /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.controller.impl.IInvoiceSalesController;
import com.spring.maven.model.InvoiceSales;
import com.spring.maven.service.InvoiceSalesService;
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
@RequestMapping(value = "/invoiceSales")
public class InvoiceSalesController implements IInvoiceSalesController{

    @Autowired
    InvoiceSalesService invoiceSalesService;
    
//    @Autowired
//    IProductService productService;
//
//    
//    @Override
//    @RequestMapping(value = "/add")
//    public ModelAndView create() {
//        Map<String, Object> map = new HashMap<String, Object>();
//        List<Product> pList = productService.getAll();
//        map.put("pList", pList);
//        return new ModelAndView("purchase/create", "map", map);
//    
//    }
    
      @Override
    @RequestMapping("/create")
    public ModelAndView create() {
     return new ModelAndView("invoiceSales/create"); 
    }

    @Override
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        InvoiceSales p = invoiceSalesService.save(request);
        Map<String, Object> map = new HashMap<>();
        return new ModelAndView("redirect:/invoiceSales/view", "map", map);
    }

    @Override
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(ModelMap map, @PathVariable("id") int id) {
        InvoiceSales p = invoiceSalesService.getById(id);
         map.addAttribute("p", p);
        return new ModelAndView("invoiceSales/update");
    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        InvoiceSales p = invoiceSalesService.update(request);
        return new ModelAndView("redirect:/invoiceSales/view");
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        InvoiceSales p = invoiceSalesService.delete(id);
        return new ModelAndView("redirect:/invoiceSales/view");
    }

    
    @Override
    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView getAll() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<InvoiceSales> invoiceList = invoiceSalesService.getAll();
        map.put("invoiceList", invoiceList);
        return new ModelAndView("/invoiceSales/view", "map", map);
    }

  

}
