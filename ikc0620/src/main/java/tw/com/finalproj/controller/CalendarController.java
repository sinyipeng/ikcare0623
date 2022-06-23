package tw.com.finalproj.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.com.finalproj.repository.CalendarDietViewRepositor;
import tw.com.finalproj.repository.CalendarSleepViewRepositor;
import tw.com.finalproj.repository.CalendarSportViewRepositor;
import tw.com.finalproj.service.CalendarDietViewRepositorService;
import tw.com.finalproj.service.CalendarSleepViewRepositorService;
import tw.com.finalproj.service.CalendarSportViewRepositorService;
import tw.com.finalproj.service.domain.CalendarDietViewBean;
import tw.com.finalproj.service.domain.CalendarSleepViewBean;
import tw.com.finalproj.service.domain.CalendarSportViewBean;
import tw.com.finalproj.service.domain.MembersBean;


@Controller
public class CalendarController extends HttpServlet {
	
	
	
	@Autowired
	CalendarSportViewRepositor calendarSportViewRepositor;
	
	@Autowired
	CalendarSportViewRepositorService calendarSportViewRepositorService; 
	
	@Autowired
	CalendarDietViewRepositor calendarDietViewRepositor;
	
	@Autowired
	CalendarDietViewRepositorService calendarDietViewRepositorService;
	
	@Autowired
	CalendarSleepViewRepositor calendarSleepViewRepositor;
	
	@Autowired
	CalendarSleepViewRepositorService calendarSleepViewRepositorService;
	
	@InitBinder
	public void init(WebDataBinder webDataBinder) {
		SimpleDateFormat sFormat = new SimpleDateFormat("yyyy-MM-dd");
		CustomDateEditor editor1 = new CustomDateEditor(sFormat, true);
		webDataBinder.registerCustomEditor(java.util.Date.class, editor1);
	}
	
	@GetMapping( "/pages/calendaruseraccount" )
	public @ResponseBody String SearchCalendarUseraccount(HttpSession session){
		MembersBean memberssession = (MembersBean)session.getAttribute("membersbean");
		session.setAttribute("test1", memberssession.getUseraccount());
		return "/pages/calendar";
	}
	
	@GetMapping( "/pages/calendarsport" )
	public @ResponseBody List<CalendarSportViewBean> SearchCalendarSport(HttpSession session){
		MembersBean memberssession = (MembersBean)session.getAttribute("membersbean");
		session.setAttribute("test1", memberssession.getUseraccount());
		return calendarSportViewRepositorService.select();
	}
	
	@GetMapping( "/pages/calendarsleep" )
	public @ResponseBody List<CalendarSleepViewBean> SearchCalendarSleep(HttpSession session){
		MembersBean memberssession = (MembersBean)session.getAttribute("membersbean");
		session.setAttribute("test1", memberssession.getUseraccount());
		
		return calendarSleepViewRepositorService.select();
	}
	
	@GetMapping( "/pages/calendardiet" )
	public @ResponseBody List<CalendarDietViewBean> SearchCalendarDiet(HttpSession session){
		MembersBean memberssession = (MembersBean)session.getAttribute("membersbean");
		session.setAttribute("test1", memberssession.getUseraccount());
		
		return calendarDietViewRepositorService.select();
	}
	
	
	
}
