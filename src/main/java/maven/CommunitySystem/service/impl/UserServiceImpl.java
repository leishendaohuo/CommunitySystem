package maven.CommunitySystem.service.impl;
 
import java.util.ArrayList;
import java.util.Map;
 
import javax.annotation.Resource;
 
import org.springframework.stereotype.Service;
 
import maven.CommunitySystem.dao.IUserDao;
import maven.CommunitySystem.entity.User;
import maven.CommunitySystem.service.IUserService;
 
@Service("UserService")
public class UserServiceImpl implements IUserService {
 
    @Resource
    private IUserDao userDao;
 
    public User Login(Map<String, String> map) {
        // TODO Auto-generated method stub
        return userDao.Login(map);
    }
    public User SelectUser(String s) {
    	return userDao.SelectUser(s);
    };
    public User SelectUserByEail(String email) {
    	return userDao.SelectUser(email);
    }
    
    public boolean UpdateUser(Map<String, String> map) {
    	return userDao.UpdateUser(map);
    };
    
    public boolean AddUser(Map<String, String> map) {
    	return userDao.AddUser(map);
    };
    
    public boolean DeleteUser(Map<String, String> map) {
    	return userDao.DeleteUser(map);
    }
    
    public boolean changes(Map<String, String> map) {//更改信息
    	return userDao.changes(map);
    }
}