package mgopang.bean;

public class PointBean {
	private String storename;
	private String picture;
	private int point;
	private int num;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public PointBean(String storename, String picture, int point, int num) {
		super();
		this.storename = storename;
		this.picture = picture;
		this.point = point;
		this.num = num;
	}
	public PointBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	@Override
	public String toString() {
		return "PointBean [storename=" + storename + ", picture=" + picture + ", point=" + point + ", rank=" + num
				+ "]";
	}
	
	
}
