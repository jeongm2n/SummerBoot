package com.spring.summerboot.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name="reservation")
public class Reservation {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="no")
	int no;
	
	@Column(name="member_id")
	String member_id;
	
	@Column(name="date")
	String date;
	
	@Column(name="site")
	int site;
	
	@Column(name="time")
	int time;
	
	@Column(name="usetime")
	int usetime;

	@Builder
	public Reservation(int no, String member_id, String date, int site, int time, int usetime) {
		super();
		this.no = no;
		this.member_id = member_id;
		this.date = date;
		this.site = site;
		this.time = time;
	}
	
	
}
