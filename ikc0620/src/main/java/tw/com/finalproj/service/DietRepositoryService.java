package tw.com.finalproj.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.finalproj.dao.DietRepository;
import tw.com.finalproj.service.domain.DietBean;

@Service
@Transactional
public class DietRepositoryService {
	@Autowired
	private DietRepository dietRepository;
	
	@Transactional(readOnly = true)
	public List<DietBean> selectDATE(DietBean bean){
		List<DietBean> beans = dietRepository.findByUseraccountAndDietdate(bean.getUseraccount(), bean.getDietdate());
		if (beans!=null&&beans.size()!=0) {
			return beans;
		}
		return null;
	}
	
	public List<DietBean> insertMeals(DietBean bean){
		String useraccount = bean.getUseraccount();
		Date dietdate = bean.getDietdate();
		List<DietBean> beans = dietRepository.findByUseraccountAndDietdate(useraccount, dietdate);
		List<DietBean> result = new ArrayList<DietBean>();
		if(beans==null||beans.size()==0) {
			DietBean breakfast = new DietBean();
			breakfast.setUseraccount(useraccount);
			breakfast.setDietdate(dietdate);
			breakfast.setDiettime("早餐");
			result.add(dietRepository.save(breakfast));
			
			DietBean lunch = new DietBean();
			lunch.setUseraccount(useraccount);
			lunch.setDietdate(dietdate);
			lunch.setDiettime("午餐");
			result.add(dietRepository.save(lunch));
			
			DietBean dinner = new DietBean();
			dinner.setUseraccount(useraccount);
			dinner.setDietdate(dietdate);
			dinner.setDiettime("晚餐");
			result.add(dietRepository.save(dinner));
			
			DietBean dessert = new DietBean();
			dessert.setUseraccount(useraccount);
			dessert.setDietdate(dietdate);
			dessert.setDiettime("點心");
			result.add(dietRepository.save(dessert));
			
			return result;
		}

		return null;
	}
}
