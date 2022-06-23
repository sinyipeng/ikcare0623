package tw.com.finalproj.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.com.finalproj.service.SleepingRepositorService;
import tw.com.finalproj.service.SleepingService;
import tw.com.finalproj.service.domain.MembersBean;
import tw.com.finalproj.service.domain.SleepingBean;


@Controller
public class SleepingController extends HttpServlet {
	
	
	
	@Autowired
	SleepingService sleepingService;
	
	@Autowired
	SleepingRepositorService sleepingRepositorService;
	
	@InitBinder
	public void init(WebDataBinder webDataBinder) {
		SimpleDateFormat sFormat = new SimpleDateFormat("yyyy-MM-dd");
		CustomDateEditor editor1 = new CustomDateEditor(sFormat, true);
		webDataBinder.registerCustomEditor(java.util.Date.class, editor1);
	}
	@RequestMapping(path = { "/pages/sleepinginsert" })
	public String MembersSleepingInsert(Model model, SleepingBean bean, BindingResult bindingResult, HttpSession session) {
		// 接收資料
		// 轉換資料
		MembersBean memberssession = (MembersBean)session.getAttribute("membersbean");
		Map<String, String> errors = new HashMap<String, String>();
		model.addAttribute("errors", errors);
		
		bean.setUseraccount(memberssession.getUseraccount());
		int memberage =((bean.getSleepingdate()).getYear()-(memberssession.getBirthday().getYear()));
		int id=1;
		if (memberage<=50) {
		id=7;
		}
		bean.setSleetimeid(id);
		System.out.println(bean);
		SleepingBean check = sleepingService.insert(bean);
		System.out.println(check);
		if(check!=null&&check.getUseraccount().length()!=0) {
			session.setAttribute("sleepingbean", check);
			return "/pages/sleeping";
		}else {
			return "/pages/sleeping";
		}

	}

	@GetMapping( "/pages/calendarselect" )
	public @ResponseBody List<SleepingBean> SearchSleepingDate(){
		return sleepingRepositorService.select();
	}
	
}
