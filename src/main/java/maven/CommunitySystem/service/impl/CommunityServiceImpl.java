package maven.CommunitySystem.service.impl;
 
import java.util.ArrayList;
import java.util.Map;
 
import javax.annotation.Resource;
 
import org.springframework.stereotype.Service;
 
import maven.CommunitySystem.dao.ICommunityDao;
import maven.CommunitySystem.entity.Community;
import maven.CommunitySystem.entity.User;
import maven.CommunitySystem.service.ICommunityService;
 
@Service("CommunityService")
public class CommunityServiceImpl implements ICommunityService {
 
    @Resource
    private ICommunityDao Dao;
    
    public Community SelectCommunity(String Communityname) {//搜索社团
    	return Dao.SelectCommunity(Communityname);
	}
    public ArrayList<Community> CheckCommunitydata(){//搜索社团列表
    	return Dao.CheckCommunitydata();
    }
    
    public boolean createcommunity(Map<String, String> map) {//创建社团
    	return Dao.createcommunity(map);
    }
}    