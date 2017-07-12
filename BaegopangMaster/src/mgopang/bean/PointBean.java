package mgopang.bean;

public class PointBean {
	private String storename;
	private String picture;
	private int point;
	private int rank;
	
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public PointBean(String storename, String picture, int point, int rank) {
		super();
		this.storename = storename;
		this.picture = picture;
		this.point = point;
		this.rank = rank;
	}
	public PointBean(String storename, String picture, int point) {
		super();
		this.storename = storename;
		this.picture = picture;
		this.point = point;
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
		return "PointBean [storename=" + storename + ", picture=" + picture + ", point=" + point + ", rank=" + rank
				+ "]";
	}
	
	
}
