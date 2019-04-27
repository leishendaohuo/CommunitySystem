package maven.CommunitySystem.web;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
//import com.alibaba.fastjson.JSONArray;
//import com.alibaba.fastjson.JSONObject;
import maven.CommunitySystem.entity.User;
import maven.CommunitySystem.service.IUserService;

@Controller
@RequestMapping("/user")
public class ChangesController{
	@Resource
	private IUserService userService;
	/*
	 *
	 * @param req    
	 * @param mv     
	 * @return<br>     
	 */
	
	@RequestMapping("/changes")
	public ModelAndView login(HttpServletRequest req, ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		if(mySession.getAttribute("id")==null) {
			mv.setViewName("login");
		}else {
			Map<String, String> map = new HashMap<String, String>();
			//如果有修改则修改，否则保持不变
			map.put("id", (String)mySession.getAttribute("id"));
			map.put("oldusername", req.getParameter("oldusername"));
			if (req.getParameter("newusername")!="") {
				map.put("newusername", req.getParameter("newusername"));
			}
			else {
				map.put("newusername", req.getParameter("oldusername"));
			}
			
			//如果有修改则修改，否则保持不变
			map.put("oldemail", req.getParameter("oldemail"));
			if (req.getParameter("newemail")!="") {
				map.put("newemail", req.getParameter("newemail"));
			}
			else {
				map.put("newemail", req.getParameter("oldemail"));
			}
			
			//如果有修改则修改，否则保持不变
			map.put("oldcollege", req.getParameter("oldcollege"));
			if (req.getParameter("newcollege")!="") {
				map.put("newcollege", req.getParameter("newcollege"));
			}
			else {
				map.put("newcollege", req.getParameter("oldcollege"));
			}
			
			//如果有修改则修改，否则保持不变
			map.put("oldmajor", req.getParameter("oldmajor"));
			if (req.getParameter("newmajor")!="") {
				map.put("newmajor", req.getParameter("newmajor"));
			}
			else {
				map.put("newmajor", req.getParameter("oldmajor"));
			}
			//如果有修改则修改，否则保持不变
			map.put("oldclass", req.getParameter("oldclass"));
			if (req.getParameter("newclass")!="") {
				map.put("newclass", req.getParameter("newclass"));
			}
			else {
				map.put("newclass", req.getParameter("oldclass"));
			}
			//如果有修改则修改，否则保持不变
			map.put("oldgrade", req.getParameter("oldgrade"));
			if (req.getParameter("newgrade")!="") {
				map.put("newgrade", req.getParameter("newgrade"));
			}
			else {
				map.put("newgrade", req.getParameter("oldgrade"));
			}
			
			//如果有修改则修改，否则保持不变
			map.put("oldpassword", req.getParameter("oldpassword"));
			if (req.getParameter("newpassword")!="") {
				map.put("newpassword", req.getParameter("newpassword"));
			}
			else {
				map.put("newpassword", req.getParameter("oldpassword"));
			}
			
			if (userService.changes(map)) {//更新信息
				Map<String, String> map1 = new HashMap<String, String>();        
				map1.put("id",(String)mySession.getAttribute("id"));
				if (req.getParameter("newpassword")!="") {
					map1.put("password", req.getParameter("newpassword"));
				}
				else {
					map1.put("password", req.getParameter("oldpassword"));
				}     
				User user = userService.Login(map1);
				if (user != null) {
					mySession.setAttribute( "id", user.getId());
					mySession.setAttribute( "username", user.getUsername());
					mySession.setAttribute( "password", user.getPassword());
					mySession.setAttribute( "email", user.getEmail());
					mySession.setAttribute( "college", user.getCollege());
					mySession.setAttribute( "major", user.getMajor());
					mySession.setAttribute( "class", user.getIclass());
					mySession.setAttribute( "grade", user.getGrade());
				}
				mv.setViewName("settings");
			} else {              
				mv.setViewName("settings");
			}
		}
		return mv;   
	}
}
