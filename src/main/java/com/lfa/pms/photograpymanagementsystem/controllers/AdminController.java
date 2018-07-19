/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.pms.photograpymanagementsystem.controllers;

import com.lfa.pms.photograpymanagementsystem.repository.ClientRepository;
import com.lfa.pms.photograpymanagementsystem.repository.EventRepository;
import com.lfa.pms.photograpymanagementsystem.repository.RequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author ZERO BYTE
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    @Autowired
    private EventRepository eventRepo;
    @Autowired
    private RequestRepository requestRepo;
    @Autowired
    private ClientRepository clientRepo;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
       // model.addAttribute("events", eventRepo.findAll());
        // model.addAttribute("requests", requestRepo.findAll());
        // model.addAttribute("clients", clientRepo.findAll());
        model.addAttribute("eventsCount", eventRepo.count());
        model.addAttribute("requestsCount", requestRepo.count());
        model.addAttribute("clientsCount", clientRepo.count());
        // model.addAttribute("pendingCount", eventRepo.pendingCount());
        return "admin/index";
    }

    @RequestMapping(value = "/settings", method = RequestMethod.GET)
    @ResponseBody
    public String settings() {
//        return "admin/settings";
        return "this is setting page.";
    }
}
