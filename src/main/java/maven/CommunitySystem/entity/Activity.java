package maven.CommunitySystem.entity;
 
import java.io.Serializable;
import java.math.BigDecimal;
// 
public class Activity implements Serializable {
 
    private static final long serialVersionUID = 1L;
    /*
     *	 活动名字
     */
    private int name;
    /*
     *	活动时间
     */
    private String createdate;
    /*
     *	 活动简介
     */
    private String recommend;
    /*
     *	 开销
     */
    private String cost;
    /*
     *  活动状态
	 */
	private String status;
	
	public int getName() {
		return name;
	}
	public void setName(int name) {
		this.name = name;
	}
	public String getCreatedate() {
		return createdate;
	}
	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}
	public String getRecommend() {
		return recommend;
	}
	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}