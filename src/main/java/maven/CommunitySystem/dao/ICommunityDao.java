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
    public Community Login(Map<String, String> map);//登录
 
    public Community SelectCommunity(String communityname);//根据社团名字搜索社团
    
    public boolean UpdateCommunity(Map<String, String> map);//更新社团信息
    
    public boolean AddCommunity(Map<String, String> map);//创建社团
    
    public boolean DeleteCommunity(Map<String, String> map);//删除社团
    
    public ArrayList<Community> CheckCommunitydata();//查询社团所有信息
    
    public boolean createcommunity(Map<String, String> map);//创建社团
}