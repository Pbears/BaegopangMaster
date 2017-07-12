package mgopang.bean;

public class OrderDataBean {

	private String storename;
	private String menuname;
	private int brandno;
	private String weekday;
	private int month;
	private String gender;
	private int price;
	private int amount;

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

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
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

	@Override
	public String toString() {
		return "OrderDate [storename=" + storename + ", menuname=" + menuname + ", brandno=" + brandno + ", weekday="
				+ weekday + ", month=" + month + ", gender=" + gender + ", price=" + price + ", amount=" + amount + "]";
	}

}
