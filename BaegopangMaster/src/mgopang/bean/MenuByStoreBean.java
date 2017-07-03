package mgopang.bean;

public class MenuByStoreBean {
	private String menuname;
	private String storename;
	public String getMenuname() {
		return menuname;
	}
	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	@Override
	public String toString() {
		return "MenuByStoreBean [menuname=" + menuname + ", storename=" + storename + "]";
	}
	
	
}
