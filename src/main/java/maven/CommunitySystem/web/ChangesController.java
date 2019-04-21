package maven.CommunitySystem.web;
import java.math.BigDecimal;
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
		Map<String, String> map = new HashMap<String, String>();
		//������޸��������޸ģ�������
		map.put("oldusername", req.getParameter("oldusername"));
		if (req.getParameter("newusername")!="") {
			map.put("newusername", req.getParameter("newusername"));
		}
		else {
			map.put("newusername", req.getParameter("oldusername"));
		}
		
		//������޸��������޸ģ�������
		map.put("oldemail", req.getParameter("oldemail"));
		if (req.getParameter("newemail")!="") {
			map.put("newemail", req.getParameter("newemail"));
		}
		else {
			map.put("newemail", req.getParameter("oldemail"));
		}
		
		//������޸��������޸ģ�������
		map.put("oldpassword", req.getParameter("oldpassword"));
		if (req.getParameter("newpassword")!="") {
			map.put("newpassword", req.getParameter("newpassword"));
		}
		else {
			map.put("newpassword", req.getParameter("oldpassword"));
		}
		
		if (userService.changes(map)) {//�޸ĳɹ�
			Map<String, String> map1 = new HashMap<String, String>();        
			if (req.getParameter("newemail")!="") {
				map1.put("email", req.getParameter("newemail"));
			}
			else {
				map1.put("email", req.getParameter("oldemail"));
			}
			if (req.getParameter("newpassword")!="") {
				map1.put("password", req.getParameter("newpassword"));
			}
			else {
				map1.put("password", req.getParameter("oldpassword"));
			}     
			User user = userService.Login(map1);
			HttpSession mySession=req.getSession(true);
			if (user != null) {
				mySession.setAttribute( "id", user.getId());
				mySession.setAttribute( "username", user.getUsername());
				mySession.setAttribute( "password", user.getPassword());
				mySession.setAttribute( "email", user.getEmail());
			}
			mv.setViewName("settings");
		} else {//�޸�ʧ��                  
			mv.setViewName("settings");
		}        
		return mv;   
	}
}
