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
	public Community SelectCommunity(String communityname);//搜索社团
	
    public ArrayList<Community> CheckCommunitydata();//查询社团列表
    
    public boolean createcommunity(Map<String, String> map);//创建社团
 
}