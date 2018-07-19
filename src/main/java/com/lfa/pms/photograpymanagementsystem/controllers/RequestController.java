/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.pms.photograpymanagementsystem.controllers;

import com.lfa.pms.photograpymanagementsystem.entity.Client;
import com.lfa.pms.photograpymanagementsystem.entity.Event;
import com.lfa.pms.photograpymanagementsystem.repository.ClientRepository;
import com.lfa.pms.photograpymanagementsystem.repository.EventRepository;
import com.lfa.pms.photograpymanagementsystem.repository.RequestRepository;
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
@RequestMapping(value = "/admin/requests")
public class RequestController {

    @Autowired
    RequestRepository requestRepo;
    @Autowired
    ClientRepository clientRepo;
    @Autowired
    EventRepository eventRepo;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("requests", requestRepo.findAll());
        return "/admin/requests/index";
    }

    @RequestMapping(value = "/accept/{id}", method = RequestMethod.GET)
    public String acceptClientAdd(@PathVariable("id") Long id, Model model) {
        model.addAttribute("request", requestRepo.findById(id).get());
        return "/admin/requests/accept";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/accept/save")
    public String saveClient(@ModelAttribute("client") Client client,
            @ModelAttribute("event") Event event) {
        clientRepo.save(client);
        event.setClient(client);
        eventRepo.save(event);
        return "redirect:/admin/requests/";
    }

    @RequestMapping(value = "/decline/{id}")
    public String decline(@PathVariable("id") Long id) {
        requestRepo.deleteById(id);
        return "/admin/requests";
    }

}
