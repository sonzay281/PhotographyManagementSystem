/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.pms.photograpymanagementsystem.controllers;

import com.lfa.pms.photograpymanagementsystem.entity.Event;
import com.lfa.pms.photograpymanagementsystem.repository.ClientRepository;
import com.lfa.pms.photograpymanagementsystem.repository.EventRepository;
import com.lfa.pms.photograpymanagementsystem.repository.EventTitleRepository;
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
@RequestMapping(value = "/admin/events")
public class EventController {

    @Autowired
    EventRepository eventRepository;
    @Autowired
    EventTitleRepository eventTitleRepository;
    @Autowired
    ClientRepository clientRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("events", eventRepository.findAll());
        return "/admin/events/index";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/add")
    public String add(Model model) {
        model.addAttribute("events", eventTitleRepository.findAll());
        model.addAttribute("clients", clientRepository.findAll());
        return "admin/events/add";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/update/{id}")
    public String update(@PathVariable("id") Long id, Model model) {
        model.addAttribute("event", eventRepository.findById(id).get());
        model.addAttribute("events", eventTitleRepository.findAll());
        model.addAttribute("clients", clientRepository.findAll());
        return "admin/events/update";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/save")
    public String save(@ModelAttribute("event") Event event) {
        eventRepository.save(event);
        return "redirect:admin/events/";
    }
}
