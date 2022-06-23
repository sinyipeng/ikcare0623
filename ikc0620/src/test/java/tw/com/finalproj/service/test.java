package tw.com.finalproj.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import tw.com.finalproj.dao.DietRepository;
import tw.com.finalproj.service.domain.BodyInformationBean;
import tw.com.finalproj.service.domain.DietBean;
import tw.com.finalproj.service.domain.DietDetailsBean;

@SpringBootTest
public class test {
	@Test
	public void contextLoads() {
	}
	
	@Autowired
	DietRepository dietRepository;
	
	@Autowired 
	DietRepositoryService dietRepositoryService;
	
	DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	
//	@Test
	@Transactional
	public void tetselect() {
		Date date=null;
		try {
			date = dateFormat.parse("2022-06-10");
		} catch (ParseException e) {
			e.printStackTrace();
		}
		List<DietBean> beans = dietRepository.findByUseraccountAndDietdate("qq@qqq",date);
		System.err.println(beans);
		
	}
	
//	@Transactional
	@Test
	public void tetselect2() {
		Date date=null;
		try {
			date = dateFormat.parse("2022-06-10");
		} catch (ParseException e) {
			e.printStackTrace();
		}
		DietBean beans = dietRepository.findByUseraccountAndDietdateAndDiettime("qq@qqq",date,"早餐");
		System.err.println(beans);
		
	}
//	@Test
	@Transactional
	public void tetselect3() {
		DietBean bean = new DietBean();
		
		Date date=null;
		try {
			date = dateFormat.parse("2022-06-10");
		} catch (ParseException e) {
			e.printStackTrace();
		}
		bean.setUseraccount("qq@qqq");
		bean.setDietdate(date);
		List<DietBean> beans = dietRepositoryService.selectDATE(bean);
		System.err.println(beans);
		
	}
//	@Test
	public void tetselect4() {
		DietBean bean = new DietBean();
		
		Date date=null;
		try {
			date = dateFormat.parse("2022-06-16");
		} catch (ParseException e) {
			e.printStackTrace();
		}
		bean.setUseraccount("aa123456@gmail.com");
		bean.setDietdate(date);
//		bean.setDiettime("早餐");
//		DietBean beans = dietRepository.save(bean);
		List<DietBean> beans = dietRepositoryService.insertMeals(bean);
		System.err.println(beans);
		
	}
	@Autowired
	DietDetailsRepositoryService dietDetailsRepositoryService;
	
	
//	@Test
	public void testDDRSin() {
		DietDetailsBean bean = new DietDetailsBean();
		bean.setDietid(1);
		bean.setSampleid(2000);
		bean.setFoodid(55);
		bean.setFoodnumber(120);
		System.err.println(bean);
		DietDetailsBean reBean = dietDetailsRepositoryService.insert(bean);
		
		System.err.println(reBean);
		
	}
//	@Test
	public void testDDRSse() {
		DietDetailsBean bean = new DietDetailsBean();
		bean.setDietid(1);
		List<DietDetailsBean> beans = dietDetailsRepositoryService.select(bean);
		System.err.println(beans);
	}
//	@Test
	public void testDDRSup() {
		DietDetailsBean bean = new DietDetailsBean();
		bean.setDietdetailid(2);
		bean.setDietid(1);
		bean.setSampleid(1000);
		bean.setFoodid(55);
		bean.setFoodnumber(99);
		DietDetailsBean beans = dietDetailsRepositoryService.update(bean);
		System.err.println(beans);
	}
//	@Test
	public void testDDRSde() {
		DietDetailsBean bean = new DietDetailsBean();
		bean.setDietdetailid(2);

		boolean result = dietDetailsRepositoryService.delete(bean);
		System.err.println(result);
	}
	
	
	
}
