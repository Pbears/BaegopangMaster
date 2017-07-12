package mgopang.bean;

public class OrderDataBean {
 
	private String storename;//
	private String menuname;//
	private int brandno;
	private String weekday;//
	private String orderday;//
	private String ordermonth;//
	private String gender;
	private int price;//
	private int amount;//
	private String memberid;//
	private int age;

	public String getStorename() {
		return storename;
	}

	public void setStorename(String storename) {
		this.storename = storename;
	}

	public String getMenuname() {
		return menuname;
	}

	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}

	public int getBrandno() {
		return brandno;
	}

	public void setBrandno(int brandno) {
		this.brandno = brandno;
	}

	public String getWeekday() {
		return weekday;
	}

	public void setWeekday(String weekday) {
		this.weekday = weekday;
	}

	public String getOrderday() {
		return orderday;
	}

	public void setOrderday(String orderday) {
		this.orderday = orderday;
	}

	public String getOrdermonth() {
		return ordermonth;
	}

	public void setOrdermonth(String ordermonth) {
		this.ordermonth = ordermonth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "OrderDataBean [storename=" + storename + ", menuname=" + menuname + ", brandno=" + brandno
				+ ", weekday=" + weekday + ", orderday=" + orderday + ", ordermonth=" + ordermonth + ", gender="
				+ gender + ", price=" + price + ", amount=" + amount + ", memberid=" + memberid + ", age=" + age + "]";
	}

}
