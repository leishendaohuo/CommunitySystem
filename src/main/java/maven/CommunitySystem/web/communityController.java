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
import maven.CommunitySystem.service.ICommunityService;
import maven.CommunitySystem.service.IUserService;

@Controller
@RequestMapping("/user")
public class communityController{
	@Resource
	private ICommunityService CommunityService;
	/*
	 *
	 * @param req    
	 * @param mv     
	 * @return<br>     
	 */
	@RequestMapping("/communityapply")
	public ModelAndView comunityapply(HttpServletRequest req,ModelAndView mv) {
		ArrayList<Community> list=CommunityService.CheckCommunitydata();
		if(list!=null) {
			req.setAttribute("list", list);
		}
		mv.setViewName("communityapply");  
		return mv;   
	}
}
