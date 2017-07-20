package mgopang.bean;

public class DaySalesDataBean {

	private String orderday;
	private int daysale;

	public String getOrderday() {
		return orderday;
	}

	public void setOrderday(String orderday) {
		this.orderday = orderday;
	}

	public int getDaysale() {
		return daysale;
	}

	public void setDaysale(int daysale) {
		this.daysale = daysale;
	}

	@Override
	public String toString() {
		return "DaySalesDataBean [orderday=" + orderday + ", daysale=" + daysale + "]";
	}

}
