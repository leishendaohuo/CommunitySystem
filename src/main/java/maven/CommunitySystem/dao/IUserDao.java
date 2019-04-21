package maven.CommunitySystem.dao;
 
import java.util.Map;
 
import maven.CommunitySystem.entity.User;
 
public interface IUserDao {
 
 
    /**
     *
     * @param map
     * @return
     */
    public User Login(Map<String, String> map);//登录
 
    public User SelectUser(String s);//根据id查询用户信息
    
    public User SelectUserByEail(String email);//根据邮箱查询用户信息
    
    public boolean UpdateUser(Map<String, String> map);//更新数据
    
    public boolean AddUser(Map<String, String> map);//添加用户
    
    public boolean DeleteUser(Map<String, String> map);//删除用户
    
    public boolean changes(Map<String, String> map);//更改信息
}