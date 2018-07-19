/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.pms.photograpymanagementsystem.controllers;

import com.lfa.pms.photograpymanagementsystem.entity.Client;
import com.lfa.pms.photograpymanagementsystem.repository.ClientRepository;
import com.lfa.pms.photograpymanagementsystem.repository.EventRepository;
import com.lfa.pms.photograpymanagementsystem.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author ZERO BYTE
 */
@Controller
@RequestMapping(value = "/admin/clients")
public class ClientController {

    @Autowired
    ClientRepository clientRepo;
    @Autowired
    UserRepository userRepo;
    @Autowired
    EventRepository eventRepo;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("clients", clientRepo.findAll());
        return "/admin/clients/index";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/add")
    public String add() {
        return "admin/clients/add";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/update/{id}")
    public String update(@PathVariable("id") Long id, Model model) {
        model.addAttribute("client", clientRepo.findById(id).get());
        return "admin/clients/update";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/details/{id}")
    public String detail(@PathVariable("id") Long c_id, Model model) {
        model.addAttribute("client", clientRepo.findById(c_id).get());
        //  model.addAttribute("event", eventRepo.findAllEvent(c_id));
        return "admin/clients/update";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/save")
    public String save(@ModelAttribute("client") Client client) {
        clientRepo.save(client);
        return "redirect:admin/clients/";
    }
}
