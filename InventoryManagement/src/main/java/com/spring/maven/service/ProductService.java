/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IProductDAO;
import com.spring.maven.model.Product;
import com.spring.maven.service.impl.IProductService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dell
 */
@Service(value = "productService")
public class ProductService implements IProductService {

    @Autowired
    IProductDAO productDAO;

    @Override
    public Product save(HttpServletRequest request) {

        String productCode = request.getParameter("productCode");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String unit = request.getParameter("unit");
        String carton = request.getParameter("carton");

        Product p = new Product();

        p.setProductCode(Integer.parseInt(productCode));
        p.setName(name);
        p.setDescription(description);
        p.setUnit(unit);
        p.setCarton(carton);

        return productDAO.save(p);
    }

    @Override
    public Product update(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        String productCode = request.getParameter("productCode");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String unit = request.getParameter("unit");
        String carton = request.getParameter("carton");

        Product p = new Product();
        p.setId(id);
        p.setProductCode(Integer.parseInt(productCode));
        p.setName(name);
        p.setDescription(description);
        p.setUnit(unit);
        p.setCarton(carton);

        return productDAO.update(p);

    }

    @Override
    public Product delete(int id) {
        return productDAO.delete(id);
    }

    @Override
    public List<Product> getAll() {

        return productDAO.getAll();

    }

    @Override
    public Product getById(int id) {
        return productDAO.getById(id);
    }

}
