package maven.CommunitySystem.entity;
 
import java.io.Serializable;
import java.math.BigDecimal;
 
public class User implements Serializable {
 
    private static final long serialVersionUID = 1L;
    /*
     * id
     */
    private String id;
    /*
     *	用户名
     */
    private String username;
    /*
     * 密码
     */
    private String password;
    /*
     *	邮箱
     */
    private String email;
    /*
     * 学院
     */
    private String college;
    /*
     *	专业
     */
    private String major;
    /*
     *	班级
     */
    private String iclass;
    /*
     *	年级
     */
    private String grade;
    /*
     *	用户身份
     */
    private int usertype;
    /*
     * 所属社团
	 */
	private String community;
	/*
     * 社团职位
     */
	private String position;
	/*
     *	申请状态，0：未申请；1：申请中；2：已通过
	 */
	private int status;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getIclass() {
		return iclass;
	}
	public void setIclass(String iclass) {
		this.iclass = iclass;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getUsertype() {
		return usertype;
	}
	public void setUsertype(int usertype) {
		this.usertype = usertype;
	}
	public String getCommunity() {
		return community;
	}
	public void setCommunity(String community) {
		this.community = community;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
    
	
}