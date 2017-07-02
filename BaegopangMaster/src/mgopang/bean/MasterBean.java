package mgopang.bean;

public class MasterBean {
	
	private String id;
	private String pw;
	private String name;
	private String address;
	private String tel;
	private String birth;
	private String storename;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	@Override
	public String toString() {
		return "MasterBean [id=" + id + ", pw=" + pw + ", name=" + name + ", address=" + address + ", tel=" + tel
				+ ", birth=" + birth + ", storename=" + storename + "]";
	}
	
	
	

}
