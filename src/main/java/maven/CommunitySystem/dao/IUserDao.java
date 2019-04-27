package maven.CommunitySystem.dao;
 
import java.util.ArrayList;
import java.util.Map;
 
import maven.CommunitySystem.entity.User;
 
public interface IUserDao {
 
 
    /**
     *
     * @param map
     * @return
     */
    public User Login(Map<String, String> map);//登录
 
    public User SelectUser(String s);//搜索用户
    
    public User SelectUserByEail(String email);//根据邮箱搜索用户
    
    public User SelectUserId(String id);//根据id搜索用户
    
    public boolean UpdateUser(Map<String, String> map);//更新用户信息
    
    public boolean AddUser(Map<String, String> map);//添加用户
    
    public boolean DeleteUser(Map<String, String> map);//用户注销
    
    public boolean changes(Map<String, String> map);//更完整的更新用户信息
    
    public ArrayList<User> Checkmemberdata(String community);//获取成员信息
    
    public boolean applycommunity(Map<String, String> map);//申请社团

    public boolean cancelcommunity(Map<String, String> map);//取消申请
}