/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.pms.photograpymanagementsystem.controllers;

import com.lfa.pms.photograpymanagementsystem.repository.EventRepository;
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
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("events", eventRepo.findAll());
        model.addAttribute("notifications", eventRepo.count());
        return "admin/index";
    }

    @RequestMapping(value = "/settings", method = RequestMethod.GET)
    @ResponseBody
    public String settings() {
//        return "admin/settings";
        return "this is setting page.";
    }
}
