package tw.com.finalproj.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.finalproj.dao.FoodDataRepository;
import tw.com.finalproj.service.domain.FoodDataBean;

@Service
@Transactional
public class FoodDataRepositoryService {
	@Autowired
	private FoodDataRepository foodDataRepository;
	
	@Transactional(readOnly = true)
	public List<FoodDataBean> select(String foodname){
		String foodnameSelect = String.format("%s%s%s", "%",foodname,"%");
		List<FoodDataBean> result = foodDataRepository.findBySamplenameLike(foodnameSelect);
		if(result!=null&&result.size()!=0) {
			return result;
		}
		return null;
	}
	
	@Transactional(readOnly = true)
	public FoodDataBean select(int foodid) {
		Optional<FoodDataBean> beanO = foodDataRepository.findById(foodid);
		FoodDataBean bean =  beanO.get();
		return bean;
	}
}
