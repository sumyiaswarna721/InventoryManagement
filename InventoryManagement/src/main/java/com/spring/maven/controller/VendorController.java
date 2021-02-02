/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.controller.impl.IVendorController;
import com.spring.maven.dao.impl.IVendorDAO;
import com.spring.maven.model.Vendor;
import com.spring.maven.service.impl.IVendorService;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dell
 */
@RestController
@RequestMapping(value = "vendor")

public class VendorController implements IVendorController {

    @Autowired
    IVendorService vendorService;

    @Autowired
    IVendorDAO vendorDAO;

    @Autowired
    ServletContext servletContext;

    @RequestMapping("/bio")
    public ModelAndView bio() {
        return new ModelAndView("vendor/bio");
    }

    @Override
    @RequestMapping("/create")
    public ModelAndView create() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Vendor> pList = vendorService.getAll();
        map.put("pList", pList);
        return new ModelAndView("vendor/create", "map", map);

    }

    @Override
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        Vendor p = vendorService.save(request);
        Map<String, Object> map = new HashMap<>();
        return new ModelAndView("redirect:/vendor/view", "map", map);
    }

    @Override
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView edit(ModelMap map, int id) {

        Vendor p = vendorService.getById(id);
        map.addAttribute("p", p);
        return new ModelAndView("vendor/update");
    }

    @Override
    @RequestMapping(value = "/u", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        Vendor p = vendorService.update(request);
        return new ModelAndView("redirect:/vendor/view");

    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {

        Vendor p = vendorService.delete(id);
        return new ModelAndView("redirect:/vendor/view");
    }

    @Override
    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView getAll() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Vendor> pList = vendorDAO.getAll();
        map.put("pList", pList);
        return new ModelAndView("vendor/view", "map", map);
    }

    @RequestMapping(value = "/save1", method = RequestMethod.POST)
    public ModelAndView save1(HttpServletRequest request, @RequestParam("image") MultipartFile file) throws IOException {

        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String city = request.getParameter("city");
        String phone = request.getParameter("phone");
        String zip = request.getParameter("zip");
        String action = request.getParameter("action");
        if (!file.isEmpty()) {
            String image = file.getOriginalFilename();
            saveFile(file, image, "/resources/vendor/img");

            Vendor hr = new Vendor();

            hr.setFname(fname);
            hr.setLname(lname);
            hr.setEmail(email);
            hr.setCity(city);
            hr.setPhone(phone);
            hr.setZip(zip);
            hr.setAction(action);
            String images = file.getOriginalFilename();
            hr.setImage(images);

            vendorDAO.save(hr);

        }
        return new ModelAndView("redirect:/vendor/create");
    }

    private void saveFile(MultipartFile file, String fileName, String path) throws IOException {
        System.out.println("Start");
        byte[] bytes = file.getBytes();
        String filePath = servletContext.getRealPath(path);
        File directory = new File(filePath);
        File cFile = new File(
                "D:\\Today\\copyInventory\\final\\pro\\New folder\\new\\New folder\\New folder\\New folder\\InventoryManagement\\src\\main\\webapp\\resources\\vendor\\img"
                + File.separator + fileName);

        BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(cFile));
        stream.write(bytes);
        stream.close();
        System.out.println(cFile);
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request, @RequestParam("image") MultipartFile file) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String city = request.getParameter("city");
        String phone = request.getParameter("phone");
        String zip = request.getParameter("zip");
        String action = request.getParameter("action");
        if (!file.isEmpty()) {
            String image = file.getOriginalFilename();
            saveFile(file, image, "/resources/vendor/img");

            Vendor hr = new Vendor();
            
            hr.setId(id);
            hr.setFname(fname);
            hr.setLname(lname);
            hr.setEmail(email);
            hr.setCity(city);
            hr.setPhone(phone);
            hr.setZip(zip);
            hr.setAction(action);
            String images = file.getOriginalFilename();
            hr.setImage(images);

            vendorDAO.update(hr);

        }
        return new ModelAndView("redirect:/vendor/create");
    }
}
