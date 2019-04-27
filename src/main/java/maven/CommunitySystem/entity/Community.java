package maven.CommunitySystem.entity;
 
import java.io.Serializable;
import java.math.BigDecimal;
// 
public class Community implements Serializable {
 
    private static final long serialVersionUID = 1L;
    /*
     *	社团名称
     */
    private String name;
    /*
     *	创建时间
     */
    private String createdate;
    /*
     *	成员数量
     */
    private String number;
    /*
     *	社团简介
     */
    private String recommend;
    /*
     * 荣誉
	 */
	private String award;
	/*
     * 创建人
	 */
	private String creator;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCreatedate() {
		return createdate;
	}
	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getRecommend() {
		return recommend;
	}
	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}
	public String getAward() {
		return award;
	}
	public void setAward(String award) {
		this.award = award;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getCreator() {
		return creator;
	}
	public void setCreator(String creator) {
		this.creator = creator;
	}
 
}