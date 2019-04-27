package maven.CommunitySystem.service;
 
import java.util.ArrayList;
import java.util.Map;

import maven.CommunitySystem.entity.Community;
import maven.CommunitySystem.entity.User;
 
public interface IUserService {
 
 
    /**
     * 登录
     *
     * @param map
     * @return
     */
	public User Login(Map<String, String> map);//登录
	 
    public User SelectUser(String Communityname);//搜索用户
    
    public User SelectUserByEail(String email);//根据邮箱搜索用户
    
    public User SelectUserId(String id);//根据id搜索用户
    
    public boolean UpdateUser(Map<String, String> map);//更新用户信息
    
    public boolean AddUser(Map<String, String> map);//添加用户
    
    public boolean DeleteUser(Map<String, String> map);//删除用户
    
    public boolean changes(Map<String, String> map);//完整的更新用户信息
    
    public ArrayList<User> Checkmemberdata(String community);//搜索社团成员列表
    
    public boolean applycommunity(Map<String, String> map);//申请社团
    
    public boolean cancelcommunity(Map<String, String> map);//取消申请

 
}