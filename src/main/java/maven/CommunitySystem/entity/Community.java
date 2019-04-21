package maven.CommunitySystem.entity;
 
import java.io.Serializable;
import java.math.BigDecimal;
// 
public class Community implements Serializable {
 
    private static final long serialVersionUID = 1L;
    /*
     *	 社团id
     */
    private int id;
    /*
     *	 社团名
     */
    private String communityname;
    /*
     *	 邮箱
     */
    private String membernum;
    /*
     *	 创建时间
     */
    private String createtime;
    /*
     *	头像url
	 */
	private String url;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCommunityname() {
		return communityname;
	}
	public void setCommunityname(String communityname) {
		this.communityname = communityname;
	}
	public String getMembernum() {
		return membernum;
	}
	public void setMembernum(String membernum) {
		this.membernum = membernum;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
     
 
}