package com.spring.summerboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReservationController {

	@RequestMapping("/reservation1")
	public String reservation1() {
		return "reservation1";
	}

	@RequestMapping("/reservation2")
	public String reservation2() {
		return "reservation2";
	}
}
