package com.coding.meal_kit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.coding.meal_kit.models.Areas;
import com.coding.meal_kit.models.CountryMeals;
import com.coding.meal_kit.models.Meals;
import com.coding.meal_kit.services.MealService;

@Controller
public class MealController {

	@Autowired
	private MealService mealService;
	
	@GetMapping("/")
	public String home(Model model) {
		Meals meals = mealService.getRandomMeal();
		Areas areas = mealService.getCountryList();
		//System.out.println(areas.getAreas().toString());
		model.addAttribute("apiData", meals);
		model.addAttribute("apiAreas",areas);
		return "/meal/home.jsp";
	}
	
	
//	@GetMapping("/getByCountry")
//	public String showMealByCountry(@RequestParam("country") String country, Model model)
//	{
//	String apiURL = "www.themealdb.com/api/json/v1/1/filter.php?a="+country;
//	System.out.println(apiURL);
//		return "/meal/home.jsp";
//}
	
//	@GetMapping("/")
//	public String home(Model model) {
//		//Meals meals = mealService.getRandomMeal();
//		Meals meals = mealService.getMealbyID("52772");
//		System.out.println(meals.toString());
//		model.addAttribute("apiData", meals);
//		return "/meal/home.jsp";
//	}
	
	@GetMapping("/details")
	public String details() {
		return "/meal/details.jsp";
	}
	
	
	
	@GetMapping("/searchByCountry")
	public String getMealByCountry(@RequestParam("country") String country, Model model)
	{
		System.out.println("Country="+country);
	String apiURL = "https://www.themealdb.com/api/json/v1/1/filter.php?a="+country;
	CountryMeals meals = mealService.getMealbyCountry(apiURL);
	Areas areas = mealService.getCountryList();
	System.out.println(meals.toString());
	System.out.println(apiURL);
	model.addAttribute("apiAreas",areas);
	model.addAttribute("apiData", meals);
		return "/meal/searchpage.jsp";
}
	
	// String param
	// rest call www.themealdb.com/api/json/v1/1/filter.php?a=Canadian
	// baseURL = www.themealdb.com/api/json/v1/1/filter.php?a={param}

}
	
