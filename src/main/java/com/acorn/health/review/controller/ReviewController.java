package com.acorn.health.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acorn.health.review.domain.ReviewDTO;
import com.acorn.health.review.domain.ReviewListDTO;

@Controller
public class ReviewController {
 
 
	@ResponseBody
	@RequestMapping( value="/API/review" , method =RequestMethod.GET)
	public ReviewDTO  getReviewListDTO() {
		return null;
	}
	
	//http://localhost:8080/health/API/review/ddtytytygdggdg?origin=kr
	@ResponseBody
	@RequestMapping( value="/API/review/{uuid}" , method =RequestMethod.GET)
	public ReviewListDTO  getReviewDTO(@PathVariable String uuid , String origin ) {		
		System.out.println(  uuid);
		System.out.println(  origin);
		return null;
	}
	
	
	
	@ResponseBody
	@RequestMapping( value="/API/review" , method=RequestMethod.POST)
	public int registerReview( ) {
		return 1;
	}
	
	
	@ResponseBody
	@RequestMapping( value="/API/review" , method=RequestMethod.PUT)
	public int updateReview( ) {
		return 1;
	}
	
	
	@ResponseBody
	@RequestMapping( value="/API/review" , method=RequestMethod.DELETE)
	public int deleteReview( ) {
		return 1;
	}

}
