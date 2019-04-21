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
    public Community Login(Map<String, String> map);//��¼����
 
    public Community SelectCommunity(String communityname);//��ѯ������Ϣ
    
    public boolean UpdateCommunity(Map<String, String> map);//����������Ϣ
    
    public boolean AddCommunity(Map<String, String> map);//��������
    
    public boolean DeleteCommunity(Map<String, String> map);//ע������
    
    public ArrayList<Community> CheckCommunitydata();//��ȡ������Ϣ
}