/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.pms.photograpymanagementsystem.controllers;

import com.lfa.pms.photograpymanagementsystem.entity.Event;
import com.lfa.pms.photograpymanagementsystem.repository.EventRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author ZERO BYTE
 */
@Controller
@RequestMapping(value = "/admin/events")
public class EventController {

    @Autowired
    EventRepository eventRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String index() {
        return "/admin/events/index";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/add")
    public String add() {
        return "admin/events/add";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/update/{id}")
    public String update() {
        return "admin/events/update";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/save")
    public String save(@ModelAttribute("event") Event event) {
        eventRepository.save(event);
        return "redirect:/events/index";
    }
}
