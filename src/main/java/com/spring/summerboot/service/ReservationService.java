package com.spring.summerboot.service;

import com.spring.summerboot.entity.Reservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.summerboot.repository.ReservationRepository;

import java.util.List;

@Service
public class ReservationService {
	
	@Autowired
	private ReservationRepository reservationRepository;
	
	public List<Reservation> findAll() {
		List<Reservation> res = (List<Reservation>)reservationRepository.findAll();
		return res; 
	}
}
