package maven.CommunitySystem.service;
 
import java.util.ArrayList;
import java.util.Map;
 
import maven.CommunitySystem.entity.Community;
import maven.CommunitySystem.entity.User;
 
public interface ICommunityService {
 
 
    /**
     * 鐧诲綍
     *
     * @param map
     * @return
     */
	public Community SelectCommunity(String communityname);//根据id查询用户信息
	
    public ArrayList<Community> CheckCommunitydata();//查询所有社团信息
 
}