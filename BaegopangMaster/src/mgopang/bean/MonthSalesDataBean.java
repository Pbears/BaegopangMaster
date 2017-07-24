package mgopang.bean;

public class MonthSalesDataBean {
	private String month;
	private String avgsales;

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getAvgsales() {
		return avgsales;
	}

	public void setAvgsales(String avgsales) {
		this.avgsales = avgsales;
	}

	@Override
	public String toString() {
		return "MonthSalesDataBean [month=" + month + ", avgsales=" + avgsales + "]";
	}

}
