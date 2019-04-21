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
    
    public Community SelectCommunity(String Communityname) {//����id��ѯ�û���Ϣ
    	return Dao.SelectCommunity(Communityname);
	}
    public ArrayList<Community> CheckCommunitydata(){//��ѯ����������Ϣ
    	return Dao.CheckCommunitydata();
    }
}