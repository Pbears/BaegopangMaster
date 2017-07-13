package mgopang.bean;

public class GenderDataBean {

	private String menuname;
	private String gender;
	private int ratiomenu;
	private int ratiogender;
	private int total;
	private int rank;

	public String getMenuname() {
		return menuname;
	}

	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getRatiomenu() {
		return ratiomenu;
	}

	public void setRatiomenu(int ratiomenu) {
		this.ratiomenu = ratiomenu;
	}

	public int getRatiogender() {
		return ratiogender;
	}

	public void setRatiogender(int ratiogender) {
		this.ratiogender = ratiogender;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	@Override
	public String toString() {
		return "GenderDataBean [menuname=" + menuname + ", gender=" + gender + ", ratiomenu=" + ratiomenu
				+ ", ratiogender=" + ratiogender + ", total=" + total + ", rank=" + rank + "]";
	}

}
