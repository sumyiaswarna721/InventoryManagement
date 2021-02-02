/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.service;

import com.spring.maven.dao.impl.IClientDAO;
import com.spring.maven.model.Client;
import com.spring.maven.service.impl.IClientService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dell
 */
@Service(value = "clientService")
public class ClientService implements IClientService {

    @Autowired
    IClientDAO clientDAO;

    @Override
    public Client save(HttpServletRequest request) {

        String cname = request.getParameter("cname");
        String pname = request.getParameter("pname");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        Client p = new Client();

        p.setCname((cname));
        p.setPname(pname);
        p.setPhone(phone);
        p.setEmail(email);
        p.setAddress(address);
        p.setCity(city);
        return clientDAO.save(p);

    }

    @Override
    public List<Client> getAll() {

        return clientDAO.getAll();

    }

    @Override
    public Client update(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        String cname = request.getParameter("cname");
        String pname = request.getParameter("pname");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        Client p = new Client();

        p.setId(id);
        p.setCname((cname));
        p.setPname(pname);
        p.setPhone(phone);
        p.setEmail(email);
        p.setAddress(address);
        p.setCity(city);
        return clientDAO.update(p);
    }

    @Override
    public Client delete(int id) {
        return clientDAO.delete(id);
    }

    @Override
    public Client getById(int id) {
        return clientDAO.getById(id);
    }

}
