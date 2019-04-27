package maven.CommunitySystem.web;
import java.util.*;
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
import maven.CommunitySystem.service.ICommunityService;
import maven.CommunitySystem.service.IUserService;

@Controller
@RequestMapping("/user")
public class communityController{
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
	@RequestMapping("/tocreatecommunity")
	public ModelAndView createcommunity(HttpServletRequest req,ModelAndView mv) {
		String strTime="";
		Calendar c=Calendar.getInstance();
		int year=c.get(Calendar.YEAR);
		int month=c.get(Calendar.MONTH) + 1;
		int day=c.get(Calendar.DAY_OF_MONTH);
		strTime=year+"-"+month+"-"+day;
		
		HttpSession mySession=req.getSession(true);
		Map<String, String> map = new HashMap<String, String>();
		map.put("creator", req.getParameter("creator"));
		map.put("name", req.getParameter("name"));
		map.put("recommend", req.getParameter("recommend"));
		map.put("award", req.getParameter("award"));
		map.put("createdate", strTime);
		
		if(communityService.createcommunity(map)) {//添加用户
			mv.addObject("create-message", "创建成功");    
		} else {       
			mv.addObject("create-message", "创建失败");            
		}
		mv.setViewName("createcommunity");
		return mv;   
	}
	
	@RequestMapping("/communityapply")
	public ModelAndView comunityapply(HttpServletRequest req,ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		ArrayList<Community> list=communityService.CheckCommunitydata();
		if(list!=null) {
			req.setAttribute("list", list);
		}
		req.setAttribute("status", mySession.getAttribute("status"));
		req.setAttribute("community", mySession.getAttribute("community"));
		mv.setViewName("communityapply");  
		return mv;   
	}
	@RequestMapping("/communitymessage")
	public ModelAndView comunitymessage(HttpServletRequest req, ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		//清空错误信息
        mySession.setAttribute("message","");
        
		Community community=communityService.SelectCommunity((String)mySession.getAttribute("community"));
		//社团不存在
		if (community==null) {
			mySession.setAttribute( "community-name", "请先加入社团");
			mySession.setAttribute( "community-createdate", "无");
			mySession.setAttribute( "community-number", "无");
			mySession.setAttribute( "community-recommend", "无");
			mySession.setAttribute( "community-award", "无");
			mySession.setAttribute( "community-creator", "无");
		}
		//社团存在
		else {
			//我的社团信息
			mySession.setAttribute( "community-name", community.getName());
			mySession.setAttribute( "community-createdate", community.getCreatedate());
			mySession.setAttribute( "community-number", community.getNumber());
			mySession.setAttribute( "community-recommend", community.getRecommend());
			mySession.setAttribute( "community-award", community.getAward());
			mySession.setAttribute( "community-creator", community.getCreator());
		}
		mv.setViewName("communitymessage");  
		return mv;    
	}
}
