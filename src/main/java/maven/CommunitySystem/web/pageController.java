package maven.CommunitySystem.web;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import maven.CommunitySystem.entity.Community;
//import com.alibaba.fastjson.JSONArray;
//import com.alibaba.fastjson.JSONObject;
import maven.CommunitySystem.entity.User;
import maven.CommunitySystem.service.IUserService;

@Controller
@RequestMapping("/user")
public class pageController{
	@Resource
	private IUserService userService;
	/*
	 *
	 * @param req    
	 * @param mv     
	 * @return<br>     
	 */
	@RequestMapping("/404")
	public ModelAndView to404(ModelAndView mv) {
		mv.setViewName("404");  
		return mv;   
	}
	@RequestMapping("/500")
	public ModelAndView to500(ModelAndView mv) {
		mv.setViewName("500");  
		return mv;   
	}
	@RequestMapping("/alerts")
	public ModelAndView alerts(ModelAndView mv) {
		mv.setViewName("alerts");  
		return mv;   
	}
	@RequestMapping("/blank")
	public ModelAndView blank(ModelAndView mv) {
		mv.setViewName("blank");  
		return mv;   
	}
	@RequestMapping("/buttons")
	public ModelAndView buttons(ModelAndView mv) {
		mv.setViewName("buttons");  
		return mv;   
	}
	@RequestMapping("/cards")
	public ModelAndView cards(ModelAndView mv) {
		mv.setViewName("cards");  
		return mv;   
	}
	@RequestMapping("/chartjs")
	public ModelAndView chartjs(ModelAndView mv) {
		mv.setViewName("chartjs");  
		return mv;   
	}
	@RequestMapping("/firstpage")
	public ModelAndView firstpage(ModelAndView mv) {
		mv.setViewName("firstpage");  
		return mv;   
	}
	@RequestMapping("/forms")
	public ModelAndView forms(ModelAndView mv) {
		mv.setViewName("forms");  
		return mv;   
	}
	@RequestMapping("/index")
	public ModelAndView index(ModelAndView mv) {
		mv.setViewName("index");  
		return mv;   
	}
	@RequestMapping("/invoice")
	public ModelAndView invoice(ModelAndView mv) {
		mv.setViewName("invoice");  
		return mv;   
	}
	@RequestMapping("/layouts-fixed-header")
	public ModelAndView layouts_fixed_header(ModelAndView mv) {
		mv.setViewName("layouts-fixed-header");  
		return mv;   
	}
	@RequestMapping("/layouts-fixed-sidebar")
	public ModelAndView layouts_fixed_sidebar(ModelAndView mv) {
		mv.setViewName("layouts-fixed-sidebar");  
		return mv;   
	}
	@RequestMapping("/layouts-hidden-sidebar")
	public ModelAndView layouts_hidden_sidebar(ModelAndView mv) {
		mv.setViewName("layouts-hidden-sidebar");  
		return mv;   
	}
	@RequestMapping("/layouts-normal")
	public ModelAndView layouts_normal(ModelAndView mv) {
		mv.setViewName("layouts-normal");  
		return mv;   
	}
	@RequestMapping("/login")
	public ModelAndView login(ModelAndView mv) {
		mv.setViewName("login");  
		return mv;   
	}
	@RequestMapping("/modals")
	public ModelAndView modals(ModelAndView mv) {
		mv.setViewName("modals");  
		return mv;   
	}
	@RequestMapping("/progress-bars")
	public ModelAndView progress_bars(ModelAndView mv) {
		mv.setViewName("progress-bars");  
		return mv;   
	}
	@RequestMapping("/register")
	public ModelAndView register(ModelAndView mv) {
		mv.setViewName("register");  
		return mv;   
	}
	@RequestMapping("/settings")
	public ModelAndView settings(ModelAndView mv) {
		mv.setViewName("settings");  
		return mv;   
	}
	@RequestMapping("/tables")
	public ModelAndView tables(ModelAndView mv) {
		mv.setViewName("tables");  
		return mv;   
	}
	@RequestMapping("/tabs")
	public ModelAndView tabs(ModelAndView mv) {
		mv.setViewName("tabs");  
		return mv;   
	}
	@RequestMapping("/widgets")
	public ModelAndView widgets(ModelAndView mv) {
		mv.setViewName("widgets");  
		return mv;   
	}
	@RequestMapping("/communitymessage")
	public ModelAndView comunitymessage(ModelAndView mv) {
		mv.setViewName("communitymessage");  
		return mv;   
	}
	@RequestMapping("/communitymember")
	public ModelAndView comunitymember(ModelAndView mv) {
		mv.setViewName("communitymember");  
		return mv;   
	}
	@RequestMapping("/communityactivity")
	public ModelAndView comunityactivity(ModelAndView mv) {
		mv.setViewName("communityactivity");  
		return mv;   
	}
	
	@RequestMapping("/usermessage")
	public ModelAndView usermessage(ModelAndView mv) {
		mv.setViewName("usermessage");  
		return mv;   
	}
	
	
}
