package maven.CommunitySystem.service;
 
import java.util.ArrayList;
import java.util.Map;
 
import maven.CommunitySystem.entity.User;
 
public interface IUserService {
 
 
    /**
     * 登录
     *
     * @param map
     * @return
     */
	public User Login(Map<String, String> map);//��¼
	 
    public User SelectUser(String Communityname);//����id��ѯ�û���Ϣ
    
    public User SelectUserByEail(String email);//���������ѯ�û���Ϣ
    
    public boolean UpdateUser(Map<String, String> map);//��������
    
    public boolean AddUser(Map<String, String> map);//����û�
    
    public boolean DeleteUser(Map<String, String> map);//ɾ���û�
    
    public boolean changes(Map<String, String> map);//������Ϣ
 
}