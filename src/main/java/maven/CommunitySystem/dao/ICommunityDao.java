package maven.CommunitySystem.dao;
 
import java.util.ArrayList;
import java.util.Map;
 
import maven.CommunitySystem.entity.Community;
 
public interface ICommunityDao {
 
 
    /**
     *
     * @param map
     * @return
     */
    public Community Login(Map<String, String> map);//登录社团
 
    public Community SelectCommunity(String communityname);//查询社团信息
    
    public boolean UpdateCommunity(Map<String, String> map);//跟新社团信息
    
    public boolean AddCommunity(Map<String, String> map);//创建社团
    
    public boolean DeleteCommunity(Map<String, String> map);//注销社团
    
    public ArrayList<Community> CheckCommunitydata();//获取社团信息
}