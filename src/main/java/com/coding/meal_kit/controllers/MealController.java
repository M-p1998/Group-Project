package com.coding.meal_kit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.coding.meal_kit.models.Meals;
import com.coding.meal_kit.services.MealService;

@Controller
public class MealController {

	@Autowired
	MealService mealService;
	
	@GetMapping("/")
	public String home(Model model) {
		Meals meals = mealService.getRandomMeal();
		System.out.println(meals.toString());
		model.addAttribute("apiData", meals);
		return "/meal/home.jsp";
	}
	
	@GetMapping("/details")
	public String details() {
		return "/meal/details.jsp";
	}
}
