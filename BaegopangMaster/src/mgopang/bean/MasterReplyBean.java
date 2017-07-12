package mgopang.bean;

public class MasterReplyBean {
	private int no;
	private String storename;
	private String ordername;
	private String id;
	private String contents;
	private String regdate;
	private int ref;
	private int pnum;
	private int reply;
	
	public MasterReplyBean(int no, String storename, String ordername, String id, String contents, String regdate,
			int ref, int pnum, int reply) {
		super();
		this.no = no;
		this.storename = storename;
		this.ordername = ordername;
		this.id = id;
		this.contents = contents;
		this.regdate = regdate;
		this.ref = ref;
		this.pnum = pnum;
		this.reply = reply;
	}

	public MasterReplyBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getStorename() {
		return storename;
	}

	public void setStorename(String storename) {
		this.storename = storename;
	}

	public String getOrdername() {
		return ordername;
	}

	public void setOrdername(String ordername) {
		this.ordername = ordername;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getPnum() {
		return pnum;
	}

	public void setPnum(int pnum) {
		this.pnum = pnum;
	}

	public int getReply() {
		return reply;
	}

	public void setReply(int reply) {
		this.reply = reply;
	}

	@Override
	public String toString() {
		return "MasterReplyBean [no=" + no + ", storename=" + storename + ", ordername=" + ordername + ", id=" + id
				+ ", contents=" + contents + ", regdate=" + regdate + ", ref=" + ref + ", pnum=" + pnum + ", reply="
				+ reply + "]";
	}
	
	
}
