/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lfa.pms.photograpymanagementsystem.repository;

import com.lfa.pms.photograpymanagementsystem.entity.EventTitle;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ZERO BYTE
 */
@Repository(value="EventTitle")
public interface EventTitleRepository extends JpaRepository<EventTitle, Long>{
    
}
