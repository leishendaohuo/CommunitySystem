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

import maven.CommunitySystem.entity.Community;
import maven.CommunitySystem.service.ICommunityService;
//import com.alibaba.fastjson.JSONArray;
//import com.alibaba.fastjson.JSONObject;
import maven.CommunitySystem.entity.User;
import maven.CommunitySystem.service.IUserService;

@Controller
@RequestMapping("/user")
public class loginController{
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
	
	//登录
	@RequestMapping("/tologin")
	public ModelAndView tologin(HttpServletRequest req, ModelAndView mv) {
		Map<String, String> map = new HashMap<String, String>();        
		map.put("id", req.getParameter("id"));
		map.put("password", req.getParameter("password"));        
		User user = userService.Login(map);
		HttpSession mySession=req.getSession(true);
		//清空错误信息
        mySession.setAttribute("message","");
		if (user != null) {//用户存在    
			mySession.setAttribute( "id", user.getId());
			mySession.setAttribute( "username", user.getUsername());
			mySession.setAttribute( "password", user.getPassword());
			mySession.setAttribute( "email", user.getEmail());
			mySession.setAttribute( "college", user.getCollege());
			mySession.setAttribute( "major", user.getMajor());
			mySession.setAttribute( "iclass", user.getIclass());
			mySession.setAttribute( "grade", user.getGrade());
			//申请状态
			mySession.setAttribute( "status", user.getStatus());
			//是否有社团
			if (user.getCommunity()==null) {
				mySession.setAttribute( "community", "无");
				mySession.setAttribute( "position", "无");
			}else {
				Community community=communityService.SelectCommunity(user.getCommunity());
				//社团不存在
				if (community==null) {
					mySession.setAttribute( "community", "您的社团不存在");
					mySession.setAttribute( "position", "无");
				}
				//社团存在
				else {
					mySession.setAttribute( "community", user.getCommunity());
					mySession.setAttribute( "position", user.getPosition());
				}
			}
			//用户身份
			if(user.getUsertype()==0)
				mySession.setAttribute( "usertype", "用户");
			else if (user.getUsertype()==1) {
				mySession.setAttribute( "usertype", "管理员");
			}
			
			mv.setViewName("index");
		} else {//登录失败          
			mv.addObject("message", "ID或者密码输入错误");            
			mv.setViewName("login");
		}        
		return mv;   
	}
	
	//注册
	@RequestMapping("/toregister")
	public ModelAndView toregister(HttpServletRequest req, ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		//清空错误信息
		mySession.setAttribute("message"," ");
		if(req.getParameter("id")!=""&&req.getParameter("username")!=""&&req.getParameter("password")!="") {
			//信息不为空
			User user=userService.SelectUserId(req.getParameter("id"));
			if (user!=null) {
				mv.addObject("message", "用户已存在");  
				mv.setViewName("login");
			}
			else {
				Map<String, String> map = new HashMap<String, String>();
				map.put("id", req.getParameter("id"));
				map.put("username", req.getParameter("username"));
				map.put("password", req.getParameter("password"));
				
				if(userService.AddUser(map)) {//添加用户
					mv.addObject("message", "注册成功");  
					mv.setViewName("login");
				} else {//ע��ʧ��            
					mv.addObject("message", "注册失败");            
					mv.setViewName("login");
				}
			}
		}else {
				mv.addObject( "message", "请输入完整信息");            
				mv.setViewName("login");
		}
		//mySession.setMaxInactiveInterval(5);
		return mv;   
	}
	
	//忘记密码
	@RequestMapping("/toforgot")
	public ModelAndView toforgot(HttpServletRequest req, ModelAndView mv) {
		mv.setViewName("errorpage2");
		return mv;
	}		
}
