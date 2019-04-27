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
import maven.CommunitySystem.service.ICommunityService;
//import com.alibaba.fastjson.JSONArray;
//import com.alibaba.fastjson.JSONObject;
import maven.CommunitySystem.entity.User;
import maven.CommunitySystem.service.ICommunityService;
import maven.CommunitySystem.service.IUserService;

@Controller
@RequestMapping("/user")
public class userController{
	@Resource
	private IUserService userService;
	
	@Resource
	private ICommunityService communityService;
	/*
	 *
	 * @param req    
	 * @param mv     
	 * @return<br>     
	 */
	//申请社团
	@RequestMapping("/toapply")
	public ModelAndView toapply(HttpServletRequest req, ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");
		}else {
			Map<String, String> map = new HashMap<String, String>();        
			map.put("id", (String)mySession.getAttribute("id"));
			map.put("community",req.getParameter("community")); 
			if(userService.applycommunity(map)) {
				mySession.setAttribute("community", req.getParameter("community"));
				mySession.setAttribute( "status", 1);
				mv.addObject("communityapply-message", "申请成功"); 
			}
			else {
				mv.addObject("communityapply-message", "申请失败"); 
			}
			ArrayList<Community> list=communityService.CheckCommunitydata();
			if(list!=null) {
				req.setAttribute("list", list);
			}
			mv.setViewName("communityapply");
		}
		return mv;   
	}
	//申请社团
	@RequestMapping("/tocancel")
	public ModelAndView tocancel(HttpServletRequest req, ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");
		}else {
			Map<String, String> map = new HashMap<String, String>();        
			map.put("id", (String)mySession.getAttribute("id"));
			map.put("community",req.getParameter("community")); 
			if(userService.cancelcommunity(map)) {
				mySession.setAttribute("community", req.getParameter("无"));
				mySession.setAttribute( "status", 0);
				mv.addObject("communitycancel-message", "取消成功"); 
			}
			else {
				mv.addObject("communitycancel-message", "取消失败"); 
			}
			ArrayList<Community> list=communityService.CheckCommunitydata();
			if(list!=null) {
				req.setAttribute("list", list);
			}
			mv.setViewName("communityapply");
		}
		return mv;   
	}
	//搜索用户
	@RequestMapping("/select")
	public ModelAndView updata(HttpServletRequest req, ModelAndView mv) {
		String s=req.getParameter("username");           
		User user = userService.SelectUser(s);        
		if (user != null) {//用户存在
			mv.addObject("id", user.getId()); 
			mv.addObject("password", user.getPassword());
			mv.addObject("username", user.getUsername()); 
		} else {//用户不存在            
			mv.addObject("message", "用户不存在");            
			}
		mv.setViewName("login");
		return mv;   
	}
	
	//更新信息
	@RequestMapping("/update")
	public ModelAndView updata2(HttpServletRequest req, ModelAndView mv) {
		Map<String, String> map = new HashMap<String, String>();        
		map.put("oldname", req.getParameter("oldname"));
		map.put("newname", req.getParameter("newname"));
		if(userService.UpdateUser(map)) {
			mv.addObject("message2", "更新成功");
		}
		else {
			mv.addObject("message2", "更新失败");
		}
		mv.setViewName("login");
		return mv;   
	}
	
	//添加用户
	@RequestMapping("/insert")
	public ModelAndView update3(HttpServletRequest req, ModelAndView mv) {       
		Map<String, String> map = new HashMap<String, String>();        
		map.put("username", req.getParameter("newusername"));
		map.put("password", req.getParameter("newpassword"));
		if(userService.AddUser(map)) {
			mv.addObject("message3", "添加成功");
		}
		else {
			mv.addObject("message3", "添加失败");
		}
		mv.setViewName("login");
		return mv;   
	}
	
	//删除用户
	@RequestMapping("/delete")
	public ModelAndView update4(HttpServletRequest req, ModelAndView mv) {       
		Map<String, String> map = new HashMap<String, String>();        
		map.put("username", req.getParameter("deletename"));
		map.put("password", req.getParameter("deletepwd"));
		if(userService.DeleteUser(map)) {
			mv.addObject("message4", "删除成功");
		}
		else {
			mv.addObject("message4", "删除失败");
		}
		mv.setViewName("login");
		return mv;   
	}
}
