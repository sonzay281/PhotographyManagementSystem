/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.pms.photograpymanagementsystem.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author ZERO BYTE
 */
@Entity
@Table(name = "tbl_events")

public class Event implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "description")
    private String description;
    @Column(name = "added_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date addedDate;
    @Column(name = "eventdate")
    @Temporal(TemporalType.DATE)
    private Date eventDate;
    @Column(name = "status")
    private Boolean status;
    @JoinColumn(name = "eventtitle_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private EventTitle eventTitle;
    @JoinColumn(name = "c_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Client client;

    public Event() {
    }

    public Event(Long id) {
        this.id = id;
    }

    public Event(Long id, String description, Boolean status, EventTitle eventTitle, Client client) {
        this.id = id;
        this.description = description;
        this.status = status;
        this.eventTitle = eventTitle;
        this.client = client;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }

    public Date getEventDate() {
        return eventDate;
    }

    public void setEventDate(Date eventDate) {
        this.eventDate = eventDate;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public EventTitle getEventTitle() {
        return eventTitle;
    }

    public void setEventTitle(EventTitle eventTitle) {
        this.eventTitle = eventTitle;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

}
