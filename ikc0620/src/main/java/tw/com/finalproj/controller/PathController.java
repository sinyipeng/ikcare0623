package tw.com.finalproj.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import tw.com.finalproj.service.domain.MembersBean;

@Controller
public class PathController {
	@RequestMapping(path = {"/"})
	public String handlerMethod1() {
		return "/index";
	}
	@RequestMapping(path = "/secure/ec_p3_login")
	public String handlerMethod2(HttpSession session) {
		if(session.getAttribute("membersbean")!=null) {
			MembersBean memberssession = (MembersBean)session.getAttribute("membersbean");
			if(memberssession.getUserlevel().equals("一般會員")) {
				return "redirect:/";
			}else {
				return "/backstage";
			}
		}
		return "/secure/ec_p3_login";
	}
	@RequestMapping(path= {"/pages/dietRecord"})
	public String dietpath() {
		return"/pages/dietRecord";
	}
	@RequestMapping(path= {"/pages/sporting"})
	 public String exercisepath() {
	  return "/pages/sporting";
	 }
	 @RequestMapping(path= {"/pages/sleeping"})
	 public String sleepingpath() {
	  return "/pages/sleeping";
	 }
	 @RequestMapping(path= {"/pages/calendar"})
	 public String calendarpath() {
	  return "/pages/calendar";
	 }
	 @RequestMapping("/pages/TDEE")
	 public String tdeepath() {
		 return "/pages/TDEE";
	 }
	 @RequestMapping("/pages/FAQ")
	 public String faqpath() {
		 return "/pages/FAQ";
	 }
	 @RequestMapping("/pages/aboutus")
	 public String aboutuspath() {
		 return "/pages/aboutus";
	 }
	 @RequestMapping("/pages/policy")
	 public String policypath() {
		 return "/pages/policy";
	 }
	 @RequestMapping(path= {"/pages/exchangeList"})
		public String exchangepath() {
			return"/pages/exchangeList";
		}
	 @RequestMapping(path= {"/pages/shopmain"})
		public String shopmainpath() {
			return"/pages/shopmain";
		}
	 @RequestMapping(path= {"/pages/cart"})
		public String cartpath() {
			return"/pages/cart";
		}
	 @RequestMapping(path= {"/pages/ezship"})
		public String ezshippath() {
			return"/pages/ezship";
		}
	 
	 
}
