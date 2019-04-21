package maven.CommunitySystem.web;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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
public class loginController{
	@Resource
	private IUserService userService;
	/*
	 *
	 * @param req    
	 * @param mv     
	 * @return<br>     
	 */
	
	//登录
	@RequestMapping("/tologin")
	public ModelAndView tologin(HttpServletRequest req, ModelAndView mv) {
		Map<String, String> map = new HashMap<String, String>();        
		map.put("email", req.getParameter("email"));
		map.put("password", req.getParameter("password"));        
		User user = userService.Login(map);
		HttpSession mySession=req.getSession(true);
		//清空错误消息
        mySession.setAttribute("message","");
		if (user != null) {//登录成功        
			mySession.setAttribute( "id", user.getId());
			mySession.setAttribute( "username", user.getUsername());
			mySession.setAttribute( "password", user.getPassword());
			mySession.setAttribute( "email", user.getEmail());
			mySession.setAttribute( "headimg", user.getHeadimg());
			if (user.getbelongcommunity()==null) {
				mySession.setAttribute( "belongcommunity", "无");
			}else {
				mySession.setAttribute( "belongcommunity", user.getbelongcommunity());
			}
			if(user.getUsertype()==0)
				mySession.setAttribute( "usertype", "用户");
			else if (user.getUsertype()==1) {
				mySession.setAttribute( "usertype", "管理员");
			}
			mv.setViewName("index");
		} else {//登录失败            
			mv.addObject("message", "密码错误或者用户不存在");            
			mv.setViewName("login");
		}        
		return mv;   
	}
	
	//注册
	@RequestMapping("/toregister")
	public ModelAndView toregister(HttpServletRequest req, ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		//清空错误消息
		mySession.setAttribute("message","");
		if(req.getParameter("email")!=""&&req.getParameter("name")!=""&&req.getParameter("password")!="") {
			//首先判断用户邮箱是否已经注册
			User user=userService.SelectUserByEail(req.getParameter("email"));
			if (user!=null) {
				mySession.setAttribute( "message", "用户已存在");
				mv.setViewName("login");
			}
			else {
				Map<String, String> map = new HashMap<String, String>();
				map.put("email", req.getParameter("email"));
				map.put("username", req.getParameter("name"));
				map.put("password", req.getParameter("password"));
				
				if(userService.AddUser(map)) {//成功注册
					mySession.setAttribute( "message", "注册成功");
					mv.setViewName("login");
				} else {//注册失败            
					mySession.setAttribute( "message", "注册失败，用户已经存在");            
					mv.setViewName("login");
				}
			}
		}else {
				mySession.setAttribute( "message", "请输入完整信息");            
				mv.setViewName("login");
		}
		//mySession.setMaxInactiveInterval(5);
		return mv;   
	}
	
	//忘记密码
	@RequestMapping("/toforgot")
	public ModelAndView toforgot(HttpServletRequest req, ModelAndView mv) {
		mv.setViewName("errorpage");
		return mv;
	}		
}
