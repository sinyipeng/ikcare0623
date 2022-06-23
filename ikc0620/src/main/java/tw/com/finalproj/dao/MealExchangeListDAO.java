package tw.com.finalproj.dao;

import java.util.List;

import tw.com.finalproj.service.domain.MealExchangeListBean;

public interface MealExchangeListDAO {
	public abstract MealExchangeListBean select(Integer mealExchangeID);
	public abstract List<MealExchangeListBean> selectType(String foodtype);
}
