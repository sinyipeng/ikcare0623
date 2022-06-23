package tw.com.finalproj.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import tw.com.finalproj.repository.BodyInformationRepositor;
import tw.com.finalproj.service.BodyInfomationService;
import tw.com.finalproj.service.MemberSportService;
import tw.com.finalproj.service.domain.BodyInformationBean;
import tw.com.finalproj.service.domain.MemberSportBean;
import tw.com.finalproj.service.domain.MembersBean;


@Controller
public class ExerciseController extends HttpServlet {
	
	@Autowired
	MemberSportService memberSportService;
	
	@Autowired
	BodyInfomationService bodyInfomationService;
	
	@Autowired
	BodyInformationRepositor bodyInformationRepositor;
	
	@InitBinder
	public void init(WebDataBinder webDataBinder) {
		SimpleDateFormat sFormat = new SimpleDateFormat("yyyy-MM-dd");
		CustomDateEditor editor1 = new CustomDateEditor(sFormat, true);
		webDataBinder.registerCustomEditor(java.util.Date.class, editor1);
	}
	@RequestMapping(path = { "/pages/exerciseinsert" })
	public String MembersSportingInsert(Model model, MemberSportBean bean, BindingResult bindingResult, HttpSession session) {
		// 接收資料
		// 轉換資料
		MembersBean memberssession = (MembersBean)session.getAttribute("membersbean");
		Map<String, String> errors = new HashMap<String, String>();
		model.addAttribute("errors", errors);
		bean.setUseraccount(memberssession.getUseraccount());
		MemberSportBean check = memberSportService.insert(bean);
		
		if(check!=null&&check.getUseraccount().length()!=0) {
			session.setAttribute("membersportbean", check);
			return "/pages/sporting";
		}else {
			return "/pages/sporting";
		}

	}
	
	@RequestMapping(path= {"/pages/bodyinformationselect"})
	public String BodyInformationselect (Model model,BodyInformationBean bean, BindingResult bindingResult, HttpSession session) {
		
		MembersBean memberssession = (MembersBean)session.getAttribute("membersbean");
		Map<String, String> errors = new HashMap<String, String>();
		model.addAttribute("errors", errors);
		
		bean.setUseraccount(memberssession.getUseraccount());
		
	
		Integer check = bodyInformationRepositor.findBodyInformationPartofName(memberssession.getUseraccount());
	
		if(check!=null) {
			session.setAttribute("check", check);
			return "/pages/sporting";
		}else {
			return "/pages/sporting";
		}
	
		
	}
	
}
