/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.controller.impl.IClientController;
import com.spring.maven.dao.impl.IClientDAO;
import com.spring.maven.dao.impl.IPurchaseDAO;
import com.spring.maven.model.Client;
import com.spring.maven.service.impl.IClientService;
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
@RequestMapping(value = "client")
public class ClientController implements IClientController {

    @Autowired
    IClientService clientService;
    
      @Autowired
      IClientDAO clientDAO;
      
      @Autowired
      IPurchaseDAO purchaseDao;

    @Override
    @RequestMapping("/client")
    public ModelAndView create() {
        return new ModelAndView("client/create");
    }
    

    @Override
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        Client p = clientService.save(request);

        Map<String, Object> map = new HashMap<>();
        if (p != null) {
            map.put("status", "Data Saved");
            return new ModelAndView("redirect:/client/view", "map", map);
        } else {
            map.put("status", "Data NOT Saved");
            return new ModelAndView("redirect:/client/view", "map", map);
        }

    }

      @Override
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
  
    public ModelAndView edit(ModelMap map, @PathVariable("id") int id) {
        Client p = clientService.getById(id);
        map.addAttribute("p", p);
        return new ModelAndView("client/update");
    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        Client p = clientService.update(request);
        return new ModelAndView("redirect:/client/view");
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        Client p = clientService.delete(id);
        return new ModelAndView("redirect:/client/view");
    }

    @Override
    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView getAll() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Client> pList = clientService.getAll();
        map.put("pList", pList);
        return new ModelAndView("client/view", "map", map);
    }
    
    @RequestMapping(value = "/otp", method = RequestMethod.POST)
    public ModelAndView checkOTP(HttpServletRequest request){
        Map<String, Object> map = new HashMap<String, Object>();
        String phone = request.getParameter("phone");
        Client t = clientDAO.checkOTP(phone);
        
        if(t != null){
            map.put("client",t);
            return new ModelAndView("/client/otp", "map", map);
        }else{
            map.put("failed", "Mobile number does not match");
            return new ModelAndView("/client/clientIn", "map", map);
        }
    }
//    @RequestMapping(value = "/search", method = RequestMethod.POST)
//    public ModelAndView searchProduct(HttpServletRequest request){
//          Map<String, Object> map = new HashMap<String, Object>();
//        String name = request.getParameter("name");
//        Purchase p = purchaseDao.searchByName(name);
//        System.out.println(p.getName());
//        map.put("product", p);
//        return new ModelAndView("/client/order", "map", map);
//                
//    }

}
