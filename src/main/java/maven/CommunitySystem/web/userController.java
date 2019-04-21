package maven.CommunitySystem.web;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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
public class userController{
	@Resource
	private IUserService userService;
	/*
	 *
	 * @param req    
	 * @param mv     
	 * @return<br>     
	 */
	
	//查询用户信息
	@RequestMapping("/select")
	public ModelAndView updata(HttpServletRequest req, ModelAndView mv) {
		String s=req.getParameter("username");           
		User user = userService.SelectUser(s);        
		if (user != null) {//查询成功  
			mv.addObject("id", user.getId()); 
			mv.addObject("password", user.getPassword());
			mv.addObject("username", user.getUsername()); 
			mv.addObject("createtime", user.getCreateTime()); 
		} else {//查询失败            
			mv.addObject("message", "无查询信息");            
			}
		mv.setViewName("index");
		return mv;   
	}
	
	//更新用户名字
	@RequestMapping("/update")
	public ModelAndView updata2(HttpServletRequest req, ModelAndView mv) {
		Map<String, String> map = new HashMap<String, String>();        
		map.put("oldname", req.getParameter("oldname"));
		map.put("newname", req.getParameter("newname"));
		if(userService.UpdateUser(map)) {
			mv.addObject("message2", "修改成功");
		}
		else {
			mv.addObject("message2", "修改失败");
		}
		mv.setViewName("index");
		return mv;   
	}
	
	//新建用户信息
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
		mv.setViewName("index");
		return mv;   
	}
	
	//删除用户信息
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
		mv.setViewName("index");
		return mv;   
	}
}
