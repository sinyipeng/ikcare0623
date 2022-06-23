package tw.com.finalproj.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.com.finalproj.service.BodyInformationRepositoryService;
import tw.com.finalproj.service.MembersService;
import tw.com.finalproj.service.domain.BodyInformationBean;
import tw.com.finalproj.service.domain.MembersBean;

@Controller
public class MemberPageController{
	@Autowired
	MembersService membersService;
	@Autowired
	BodyInformationRepositoryService bodyInformationRepositoryService;

	@InitBinder
	public void init(WebDataBinder webDataBinder) {
		SimpleDateFormat sFormat = new SimpleDateFormat("yyyy-MM-dd");
		CustomDateEditor editor1 = new CustomDateEditor(sFormat, true);
		webDataBinder.registerCustomEditor(java.util.Date.class, editor1);
	}

	@RequestMapping(path = { "/en-us/login" })
	public String handlerMethodLogin(Locale locale, Model model, String account, String password, HttpSession session) {
		// 接收資料
		// 驗證資料
		Map<String, String> errors = new HashMap<String, String>();
		model.addAttribute("errors", errors);
		Map<String, String> Lsuccess = new HashMap<String, String>();
		model.addAttribute("Lsuccess", Lsuccess);
		if(session.getAttribute("membersbean")!=null) {
			MembersBean memberssession = (MembersBean)session.getAttribute("membersbean");
			if(!memberssession.getUserlevel().equals("一般會員")) {
				return "redirect:/";
			}else {
				return "/backstage";
			}
		}
		// 呼叫model
		MembersBean bean = membersService.login(account, password);
		// 根據model結果導向view
		if (bean == null) {
			errors.put("password", "帳號或密碼錯誤");
			return "/secure/ec_p3_login";
		} else if(bean.getUserlevel().equals("一般會員")){
			session.setAttribute("membersbean", bean);
			//todo會員跳轉
			return "redirect:/";
		}else {
			return "/backstage";
		}
	}

	@RequestMapping(path = { "/en-us/signup" })
	public String handlerMethodSignup(Model model, MembersBean bean, BindingResult bindingResult,BodyInformationBean Bbean,BindingResult bBindingResult, HttpSession session) {
		// 接收資料
		// 轉換資料
		Map<String, String> error = new HashMap<String, String>();
		model.addAttribute("error", error);
		Map<String, String> error2 = new HashMap<String, String>();
		model.addAttribute("error2", error2);
		Map<String, String> fail = new HashMap<String, String>();
		model.addAttribute("fail", fail);
		Map<String, String> success = new HashMap<String, String>();
		model.addAttribute("success", success);

		if(bBindingResult!=null && bBindingResult.hasErrors()) {
			System.out.println(Bbean);
			if(bBindingResult.hasFieldErrors("memberheight")) {
					error.put("xxx", "XXX");
			}
			if(bBindingResult.hasFieldErrors("memberweight")) {
					error2.put("xxx", "XXX");
			}
			
		}
		if(!bean.getCellphone().matches("[0]{1}[9]{1}[0-9]{8}")) {
			bean.setCellphone("");
		}
		if(!bean.getTelephone().matches("[0]{1}[2-9]{1}[0-9]{7,8}")) {
			bean.setTelephone("");
		}
		if(!error.isEmpty()||!error2.isEmpty()) {
			return "/secure/ec_p3_login";
		}
		
		bean.setUserlevel("一般會員");
		bean.setEmail(bean.getUseraccount());
		
		MembersBean check = membersService.insert(bean);
		BodyInformationBean BodyFirstInformation = bodyInformationRepositoryService.insert(Bbean);
		if(check!=null&&check.getUseraccount().length()!=0) {
			success.put("OOO", "OOO");
			session.setAttribute("membersbean", check);
			return "redirect:/";
		}else {
			fail.put("xxx", "xxx");
			return "/secure/ec_p3_login";
		}

	}
	@RequestMapping(path = {"/en-us/logout"})
	public String handlerMethodLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/secure/ec_p3_login";
	}
	@PostMapping(path = {"/en-us/fbsignup"})
	public @ResponseBody String FBSignup(@RequestBody String body) {
		JSONObject jsonObj = new JSONObject(body);
		String id = jsonObj.getString("id");
		String name = jsonObj.getString("name");
		String email = jsonObj.getString("email");
		MembersBean bean = new MembersBean();
		bean.setUseraccount(id);
		bean.setEmail(email);
		bean.setMembername(name);
		bean.setUserpassword("fblogin");
		bean.setBirthday(null);
		bean.setAddress("");
		bean.setArea("");
		bean.setTelephone("");
		bean.setCellphone("");
		bean.setUserlevel("一般會員");
		bean.setGender("");
		
		MembersBean check = membersService.insert(bean);
		if(check!=null) {
			return"success";
		}else {
			return"fail";
		}
	}
	@PostMapping("/en-us/fblogin")
	public @ResponseBody String FBLogin(@RequestBody String body) {
		JSONObject jsonObj = new JSONObject(body);
		String id = jsonObj.getString("id");
		String name = jsonObj.getString("name");
		String email = jsonObj.getString("email");
		
		MembersBean check = membersService.login(id, "fblogin");
		
		if(check!=null) {
			return"success";
		}else {
			return"fail";
		}
		

	}
}
