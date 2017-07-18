package mgopang.bean;

public class WeekDayDataBean {
	private String menuname;
	private String weekday;
	private int ratiomenu;
	private int rank;
	private int ratioday;

	public String getMenuname() {
		return menuname;
	}

	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}

	public String getWeekday() {
		return weekday;
	}

	public void setWeekday(String weekday) {
		this.weekday = weekday;
	}

	public int getRatiomenu() {
		return ratiomenu;
	}

	public void setRatiomenu(int ratiomenu) {
		this.ratiomenu = ratiomenu;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public int getRatioday() {
		return ratioday;
	}

	public void setRatioday(int ratioday) {
		this.ratioday = ratioday;
	}

	@Override
	public String toString() {
		return "WeekDayDataBean [menuname=" + menuname + ", weekday=" + weekday + ", ratiomenu=" + ratiomenu + ", rank="
				+ rank + ", ratioday=" + ratioday + "]";
	}

}
