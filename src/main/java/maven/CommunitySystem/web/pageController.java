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
	public ModelAndView to404(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;   
	}
	@RequestMapping("/500")
	public ModelAndView to500(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	@RequestMapping("/alerts")
	public ModelAndView alerts(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	@RequestMapping("/blank")
	public ModelAndView blank(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	@RequestMapping("/buttons")
	public ModelAndView buttons(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;    
	}
	@RequestMapping("/cards")
	public ModelAndView cards(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	@RequestMapping("/chartjs")
	public ModelAndView chartjs(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	@RequestMapping("/firstpage")
	public ModelAndView firstpage(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	@RequestMapping("/forms")
	public ModelAndView forms(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	@RequestMapping("/index")
	public ModelAndView index(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("index");
		}  
		return mv;     
	}
	@RequestMapping("/invoice")
	public ModelAndView invoice(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	@RequestMapping("/layouts-fixed-header")
	public ModelAndView layouts_fixed_header(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	@RequestMapping("/layouts-fixed-sidebar")
	public ModelAndView layouts_fixed_sidebar(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	@RequestMapping("/layouts-hidden-sidebar")
	public ModelAndView layouts_hidden_sidebar(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	@RequestMapping("/layouts-normal")
	public ModelAndView layouts_normal(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest req,ModelAndView mv) {
		mv.setViewName("login");
		return mv;     
	}
	@RequestMapping("/modals")
	public ModelAndView modals(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	@RequestMapping("/progress-bars")
	public ModelAndView progress_bars(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	@RequestMapping("/register")
	public ModelAndView register(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("register");
		}  
		return mv;     
	}
	@RequestMapping("/settings")
	public ModelAndView settings(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("settings");
		}  
		return mv;     
	}
	@RequestMapping("/tables")
	public ModelAndView tables(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	@RequestMapping("/tabs")
	public ModelAndView tabs(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	@RequestMapping("/widgets")
	public ModelAndView widgets(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("404");
		}  
		return mv;     
	}
	
	@RequestMapping("/communityactivity")
	public ModelAndView comunityactivity(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("errorpage");
		}  
		return mv;     
	}
	@RequestMapping("/createcommunity")
	public ModelAndView createcommunity(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("createcommunity");
		}  
		return mv;     
	}
	
	@RequestMapping("/usermessage")
	public ModelAndView usermessage(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");  
		}else {
			mv.setViewName("usermessage");
		}  
		return mv;     
	}
	@RequestMapping("/communitymember")
	public ModelAndView comunitymember(HttpServletRequest req, ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");
		}else {
			String community=(String)mySession.getAttribute("community"); 
			ArrayList<User> list=userService.Checkmemberdata(community);
			if(list!=null) {
				req.setAttribute("memberlist", list);
			}
			mv.setViewName("communitymember");  
		}
		return mv;    
	}
}
