package mgopang.bean;

public class NoticeBean {
	private int no;
	private String info;
	private String regdate;
	private String adminid;
	private String title;
	
	
	public NoticeBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NoticeBean(int no, String info, String regdate, String adminid, String title) {
		super();
		this.no = no;
		this.info = info;
		this.regdate = regdate;
		this.adminid = adminid;
		this.title = title;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getAdminid() {
		return adminid;
	}
	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "NoticeBean [no=" + no + ", info=" + info + ", regdate=" + regdate + ", adminid=" + adminid + ", title="
				+ title + "]";
	}
	
	

}