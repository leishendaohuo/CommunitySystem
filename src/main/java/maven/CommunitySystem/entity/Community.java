package maven.CommunitySystem.entity;
 
import java.io.Serializable;
import java.math.BigDecimal;
// 
public class Community implements Serializable {
 
    private static final long serialVersionUID = 1L;
    /*
     *	 ����id
     */
    private int id;
    /*
     *	 ������
     */
    private String communityname;
    /*
     *	 ����
     */
    private String membernum;
    /*
     *	 ����ʱ��
     */
    private String createtime;
    /*
     *	ͷ��url
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