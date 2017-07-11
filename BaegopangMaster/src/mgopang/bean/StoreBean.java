package mgopang.bean;

public class StoreBean {
	
	private String storename;
	private int brandno;
	private String location;
	private int gpa;
	private String hours;
	private String tel;
	private int minprice;
	private String info;
	private String picture;
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	public int getBrandno() {
		return brandno;
	}
	public void setBrandno(int brandno) {
		this.brandno = brandno;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getGpa() {
		return gpa;
	}
	public void setGpa(int gpa) {
		this.gpa = gpa;
	}
	public String getHours() {
		return hours;
	}
	public void setHours(String hours) {
		this.hours = hours;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getMinprice() {
		return minprice;
	}
	public void setMinprice(int minprice) {
		this.minprice = minprice;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public StoreBean(String storename, int brandno, String location, int gpa, String hours, String tel, int minprice,
			String info, String picture) {
		super();
		this.storename = storename;
		this.brandno = brandno;
		this.location = location;
		this.gpa = gpa;
		this.hours = hours;
		this.tel = tel;
		this.minprice = minprice;
		this.info = info;
		this.picture = picture;
	}
	

	
	
	
	
	
	
	
	
	
	
	

}
