                                            /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.controller.impl.IPurchaseController;
import com.spring.maven.model.Product;
import com.spring.maven.model.Purchase;
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
 * @author Dell
 */
@RestController
@RequestMapping(value = "/purchase")
public class PurchaseController implements IPurchaseController {

    @Autowired
    IPurchaseService purchaseService;
    
    @Autowired
    IProductService productService;
    
     @Autowired
     ISalesService salesService;
    
    @Override
    @RequestMapping(value = "/add")
    public ModelAndView create() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Product> pList = productService.getAll();
        map.put("pList", pList);
        return new ModelAndView("purchase/create", "map", map);
    
    }

    @Override
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        Purchase p = purchaseService.save(request);
        Map<String, Object> map = new HashMap<>();
        return new ModelAndView("redirect:/purchase/view", "map", map);
    }

    @Override
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(ModelMap map, @PathVariable("id") int id) {
        Purchase p = purchaseService.getById(id);
         map.addAttribute("p", p);
        return new ModelAndView("purchase/update");
    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        Purchase p = purchaseService.update(request);
        return new ModelAndView("redirect:/purchase/view");
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        Purchase p = purchaseService.delete(id);
        return new ModelAndView("redirect:/purchase/view");
    }

    
    @Override
    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView getAll() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Purchase> purchaseList = purchaseService.getAll();
        map.put("purchaseList", purchaseList);
        return new ModelAndView("/purchase/view", "map", map);
    }

//     @RequestMapping(value = "/rpt_1", method = RequestMethod.GET)
//    public Object dailyIncome(HttpServletRequest request) {
//        String action = request.getParameter("action");
//        if(action.equals("Income")){
//           List<Purchase> p = purchaseService.searchExpenditure(request);
//           return p;
//        }else{
//            List<Sales> p = salesService.searchIncome(request);
//            return p;
//        }
//
//    }
}
