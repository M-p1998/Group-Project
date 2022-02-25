package com.coding.meal_kit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;



@Controller
public class MealController {
	
	@GetMapping("/")
	public String home() {
		return "/meal/home.jsp";
	}
}
