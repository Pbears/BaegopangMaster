package mgopang.bean;

public class WeekdaySalesDataBean {

	private String weekday;
	private int avgsales;

	public String getWeekday() {
		return weekday;
	}

	public void setWeekday(String weekday) {
		this.weekday = weekday;
	}

	public int getAvgsales() {
		return avgsales;
	}

	public void setAvgsales(int avgsales) {
		this.avgsales = avgsales;
	}

	@Override
	public String toString() {
		return "WeekdaySalesDataBean [weekday=" + weekday + ", avgsales=" + avgsales + "]";
	}

}
