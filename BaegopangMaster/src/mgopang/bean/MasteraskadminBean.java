package mgopang.bean;

public class MasteraskadminBean {
	private int no;
	private String masterinfo;
	private String masterid;
	private String admininfo;
	private String adminid;
	private String regdate;
	private int hit;
	private String title;
	public String getMasterinfo() {
		return masterinfo;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public void setMasterinfo(String masterinfo) {
		this.masterinfo = masterinfo;
	}
	public String getMasterid() {
		return masterid;
	}
	public void setMasterid(String masterid) {
		this.masterid = masterid;
	}
	public String getAdmininfo() {
		return admininfo;
	}
	public void setAdmininfo(String admininfo) {
		this.admininfo = admininfo;
	}
	public String getAdminid() {
		return adminid;
	}
	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "MasteraskadminBean [no=" + no + ", masterinfo=" + masterinfo + ", masterid=" + masterid + ", admininfo="
				+ admininfo + ", adminid=" + adminid + ", regdate=" + regdate + ", hit=" + hit + ", title=" + title
				+ "]";
	}

	
	
	
}
