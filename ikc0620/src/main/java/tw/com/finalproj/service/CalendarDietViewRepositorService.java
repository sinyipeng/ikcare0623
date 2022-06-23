package tw.com.finalproj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.finalproj.repository.CalendarDietViewRepositor;
import tw.com.finalproj.service.domain.CalendarDietViewBean;

@Service
@Transactional
public class CalendarDietViewRepositorService {
	@Autowired
	private CalendarDietViewRepositor calendarDietViewRepositor;
	
	@Transactional(readOnly = true)
	public List<CalendarDietViewBean> select(){

		List<CalendarDietViewBean> result = calendarDietViewRepositor.findAll();
		System.err.println(result);
		if(result!=null&&result.size()!=0) {
			System.err.println("OK");
			return result;
		}
		return null;
	}
}
