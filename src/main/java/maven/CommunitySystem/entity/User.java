package maven.CommunitySystem.entity;
 
import java.io.Serializable;
import java.math.BigDecimal;
 
public class User implements Serializable {
 
    private static final long serialVersionUID = 1L;
    /*
     * id
     */
    private int id;
    /*
     *	 �û���
     */
    private String username;
    /*
     *	����
     */
    private String password;
    /*
     *	 ����
     */
    private String email;
    /*
     *	 ����ʱ��
     */
    private String createTime;
    /*
     *	 ��һ�ε�¼ʱ��
     */
    private String lastLoginTime;
    /*
     *	 �û����ͣ�0����ͨ�û���1������Ա
     */
    private int usertype;
    /*
     *	��������
	 */
	private String belongcommunity;
	/*
     *	ͷ��url
     */
	private String headimg;
    
	public String getbelongcommunity() {
		return belongcommunity;
	}

	public void setbelongcommunity(String belongcommunity) {
		this.belongcommunity = belongcommunity;
	}
	
	public String getHeadimg() {
		return headimg;
	}

	public void setHeadimg(String headimg) {
		this.headimg = headimg;
	}
	
    public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }
 
    public String getCreateTime() {
        return createTime;
    }
 
    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
 
    public String getLastLoginTime() {
        return lastLoginTime;
    }
 
    public void setLastLoginTime(String lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }
 
    public int getUsertype() {
        return usertype;
    }
 
    public void setUsertype(int usertype) {
        this.usertype = usertype;
    }
 
    public static long getSerialversionuid() {
        return serialVersionUID;
    }
 
    public int getId() {
        return id;
    }
 
    public void setId(int id) {
        this.id = id;
    }
 
    public String getUsername() {
        return username;
    }
 
    public void setUsername(String username) {
        this.username = username;
    }
 
    public String getPassword() {
        return password;
    }
 
    public void setPassword(String password) {
        this.password = password;
    }
 
}