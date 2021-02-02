/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IVendorDAO;
import com.spring.maven.model.Vendor;
import com.spring.maven.service.impl.IVendorService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dell
 */
@Service(value = "vendorService")
public class VendorService implements IVendorService {

    @Autowired
    IVendorDAO vendorDAO;

    @Override
    public Vendor save(HttpServletRequest request) {

//        String fname = request.getParameter("fname");
//        String lname = request.getParameter("lname");
//        String email = request.getParameter("email");
//        String city = request.getParameter("city");
//        String phone = request.getParameter("phone");
//        String zip = request.getParameter("zip");
//        String image = request.getParameter("image");
//        Vendor p = new Vendor();
//
//        p.setFname(fname);
//        p.setLname(lname);
//        p.setEmail(email);
//        p.setCity(city);
//        p.setPhone(phone);
//        p.setZip(zip);
//        p.setImage(image);
//
//        return vendorDAO.save(p);
//
//    }
//
//    @Override
//    public Vendor update(HttpServletRequest request) {
//        int id = Integer.parseInt(request.getParameter("id"));
//        String fname = request.getParameter("fname");
//        String lname = request.getParameter("lname");
//        String email = request.getParameter("email");
//        String city = request.getParameter("city");
//        String phone = request.getParameter("phone");
//        String zip = request.getParameter("zip");
//        String image = request.getParameter("image");
//        Vendor p = new Vendor();
//
//        p.setFname(fname);
//        p.setLname(lname);
//        p.setEmail(email);
//        p.setCity(city);
//        p.setPhone(phone);
//        p.setZip(zip);
//        p.setImage(image);
//        return vendorDAO.update(p);
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public Vendor delete(int id) {

        return vendorDAO.delete(id);
    }

    @Override
    public List<Vendor> getAll() {

        return vendorDAO.getAll();
    }

    @Override
    public Vendor getById(int id) {

        return vendorDAO.getById(id);
    }

    @Override
    public Vendor update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
