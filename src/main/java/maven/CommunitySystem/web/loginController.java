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
	
	//��¼
	@RequestMapping("/tologin")
	public ModelAndView tologin(HttpServletRequest req, ModelAndView mv) {
		Map<String, String> map = new HashMap<String, String>();        
		map.put("email", req.getParameter("email"));
		map.put("password", req.getParameter("password"));        
		User user = userService.Login(map);
		HttpSession mySession=req.getSession(true);
		//��մ�����Ϣ
        mySession.setAttribute("message","");
		if (user != null) {//��¼�ɹ�        
			mySession.setAttribute( "id", user.getId());
			mySession.setAttribute( "username", user.getUsername());
			mySession.setAttribute( "password", user.getPassword());
			mySession.setAttribute( "email", user.getEmail());
			mySession.setAttribute( "headimg", user.getHeadimg());
			if (user.getbelongcommunity()==null) {
				mySession.setAttribute( "belongcommunity", "��");
			}else {
				mySession.setAttribute( "belongcommunity", user.getbelongcommunity());
			}
			if(user.getUsertype()==0)
				mySession.setAttribute( "usertype", "�û�");
			else if (user.getUsertype()==1) {
				mySession.setAttribute( "usertype", "����Ա");
			}
			mv.setViewName("index");
		} else {//��¼ʧ��            
			mv.addObject("message", "�����������û�������");            
			mv.setViewName("login");
		}        
		return mv;   
	}
	
	//ע��
	@RequestMapping("/toregister")
	public ModelAndView toregister(HttpServletRequest req, ModelAndView mv) {
		HttpSession mySession=req.getSession(true);
		//��մ�����Ϣ
		mySession.setAttribute("message","");
		if(req.getParameter("email")!=""&&req.getParameter("name")!=""&&req.getParameter("password")!="") {
			//�����ж��û������Ƿ��Ѿ�ע��
			User user=userService.SelectUserByEail(req.getParameter("email"));
			if (user!=null) {
				mySession.setAttribute( "message", "�û��Ѵ���");
				mv.setViewName("login");
			}
			else {
				Map<String, String> map = new HashMap<String, String>();
				map.put("email", req.getParameter("email"));
				map.put("username", req.getParameter("name"));
				map.put("password", req.getParameter("password"));
				
				if(userService.AddUser(map)) {//�ɹ�ע��
					mySession.setAttribute( "message", "ע��ɹ�");
					mv.setViewName("login");
				} else {//ע��ʧ��            
					mySession.setAttribute( "message", "ע��ʧ�ܣ��û��Ѿ�����");            
					mv.setViewName("login");
				}
			}
		}else {
				mySession.setAttribute( "message", "������������Ϣ");            
				mv.setViewName("login");
		}
		//mySession.setMaxInactiveInterval(5);
		return mv;   
	}
	
	//��������
	@RequestMapping("/toforgot")
	public ModelAndView toforgot(HttpServletRequest req, ModelAndView mv) {
		mv.setViewName("errorpage");
		return mv;
	}		
}
