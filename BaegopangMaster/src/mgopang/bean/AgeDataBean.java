package mgopang.bean;

public class AgeDataBean {

	private String menuname;
	private int ratiomenu;
	private int ratioage;
	private int age;
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

	public int getRatioage() {
		return ratioage;
	}

	public void setRatioage(int ratioage) {
		this.ratioage = ratioage;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	@Override
	public String toString() {
		return "AgeDataBean [menuname=" + menuname + ", ratiomenu=" + ratiomenu + ", ratioage=" + ratioage + ", age="
				+ age + ", rank=" + rank + "]";
	}

}
