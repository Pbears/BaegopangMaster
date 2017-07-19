package mgopang.bean;

public class BrandDataBean {

	private String menuname;
	private int ratiomenu;
	private int rank;

	public String getMenuname() {
		return menuname;
	}

	public void setMenuname(String menuname) {
		this.menuname = menuname;
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

	@Override
	public String toString() {
		return "BrandDataBean [menuname=" + menuname + ", ratiomenu=" + ratiomenu + ", rank=" + rank + "]";
	}

}
