package maven.CommunitySystem.service;
 
import java.util.ArrayList;
import java.util.Map;
 
import maven.CommunitySystem.entity.Community;
import maven.CommunitySystem.entity.User;
 
public interface ICommunityService {
 
 
    /**
     * 登录
     *
     * @param map
     * @return
     */
	public Community SelectCommunity(String communityname);//����id��ѯ�û���Ϣ
	
    public ArrayList<Community> CheckCommunitydata();//��ѯ����������Ϣ
 
}