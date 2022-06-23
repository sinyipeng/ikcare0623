package tw.com.finalproj.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.finalproj.dao.MealExchangeListRepository;
import tw.com.finalproj.service.domain.MealExchangeListBean;

@Service
@Transactional
public class MealExchangeListRepositoryService {
	
	@Autowired
	private MealExchangeListRepository mealExchangeListRepository;
	
	@Transactional(readOnly = true)
	public List<MealExchangeListBean> select(String foodtype){
		String foodtypeSelect = String.format("%s",foodtype );
		List<MealExchangeListBean> search =  mealExchangeListRepository.findByfoodtype(foodtypeSelect);
		if(search!=null &&search.size()!=0) {
			return search;
		}
		return null;
			
	}
	
	@Transactional(readOnly = true)
		public MealExchangeListBean select(Integer foodid) {
			Optional<MealExchangeListBean> bean = mealExchangeListRepository.findById(foodid);
			MealExchangeListBean beans = bean.get();
			return beans;
		}
	
	
	
	
}
