package tw.com.finalproj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.finalproj.repository.CalendarSportViewRepositor;
import tw.com.finalproj.service.domain.CalendarSportViewBean;

@Service
@Transactional
public class CalendarSportViewRepositorService {
	@Autowired
	private CalendarSportViewRepositor calendarSportViewRepositor;
	
	@Transactional(readOnly = true)
	public List<CalendarSportViewBean> select(){

		List<CalendarSportViewBean> result = calendarSportViewRepositor.findAll();
		System.err.println(result);
		if(result!=null&&result.size()!=0) {
			System.err.println("OK");
			return result;
		}
		return null;
	}
	
	
}
