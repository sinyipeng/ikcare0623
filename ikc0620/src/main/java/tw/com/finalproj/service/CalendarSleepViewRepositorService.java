package tw.com.finalproj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.finalproj.repository.CalendarSleepViewRepositor;
import tw.com.finalproj.service.domain.CalendarSleepViewBean;

@Service
@Transactional
public class CalendarSleepViewRepositorService {
	@Autowired
	private CalendarSleepViewRepositor calendarSleepViewRepositor;
	
	@Transactional(readOnly = true)
	public List<CalendarSleepViewBean> select(){

		List<CalendarSleepViewBean> result = calendarSleepViewRepositor.findAll();
		System.err.println(result);
		if(result!=null&&result.size()!=0) {
			System.err.println("OK");
			return result;
		}
		return null;
	}
}
