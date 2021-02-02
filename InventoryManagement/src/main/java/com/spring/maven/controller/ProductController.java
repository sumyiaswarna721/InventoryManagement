/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.controller.impl.IProductController;
import com.spring.maven.model.Product;
import com.spring.maven.service.impl.IProductService;
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
@RequestMapping(value = "product")
public class ProductController implements IProductController {

    @Autowired
    IProductService productService;

    @Override
    @RequestMapping("/entryProduct")
    public ModelAndView create() {

        return new ModelAndView("product/entryProduct");

    }

    @RequestMapping("/create")
    public ModelAndView create1() {

        return new ModelAndView("product/create");

    }

    @Override
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        Product p = productService.save(request);

        Map<String, Object> map = new HashMap<>();
        if (p != null) {
            map.put("status", "Data Saved");
            return new ModelAndView("redirect:/product/view", "map", map);
        } else {
            map.put("status", "Data NOT Saved");
            return new ModelAndView("redirect:/product/view", "map", map);
        }

    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    @Override
    public ModelAndView edit(ModelMap map, @PathVariable("id") int id) {
        Product p = productService.getById(id);
         map.addAttribute("p", p);
        return new ModelAndView("product/update");
    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        Product p = productService.update(request);
        return new ModelAndView("redirect:/product/view");
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        Product p = productService.delete(id);
        return new ModelAndView("redirect:/product/view");
    }

    @Override
    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView getAll() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Product> pList = productService.getAll();
        map.put("pList", pList);
        return new ModelAndView("product/view", "map", map);
    }

}
