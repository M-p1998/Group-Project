package com.coding.meal_kit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MealController {

	@GetMapping("/")
	public String home() {
		return "/meal/home.jsp";	
		
	}
	
	@GetMapping("/details")
	public String details() {
		return "/meal/details.jsp";
	}
}
