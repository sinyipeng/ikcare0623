package tw.com.finalproj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.com.finalproj.service.MealExchangeListRepositoryService;
import tw.com.finalproj.service.MembersService;
import tw.com.finalproj.service.domain.FoodDataBean;
import tw.com.finalproj.service.domain.MealExchangeListBean;

@Controller
public class MealExchangeListController {
	
	@Autowired
	MembersService memberService;
	@Autowired
	MealExchangeListRepositoryService mealExchangeListRepositoryService;
	
	@GetMapping("/pages/findExchangeList/{foodtype}")
	public @ResponseBody List<MealExchangeListBean> SearchMealExchangeList(@PathVariable(name = "foodtype") String foodType){
		System.out.println(foodType);
		List<MealExchangeListBean> beans = mealExchangeListRepositoryService.select(foodType);
		System.err.println(beans);
		return beans;
	}
//	@GetMapping("/pages/insertfood/{insertid}")
//	public @ResponseBody FoodDataBean insertFood(@PathVariable(name = "insertid")int insertid) {
//		System.out.println(insertid);
//		return mealExchangeListRepositoryService.select(insertid);
//	}

}
