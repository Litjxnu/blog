package cn.jxnu.blog.entity;

import java.io.Serializable;

public class Menu implements Serializable{
	
	private static final long serialVersionUID = 1L;

	private Integer menuId;

    private String menuName;

    private Integer menuStatus;
    
    private String menuUrl;
	
	public Menu() {
		super();
	}

	public Integer getMenuId() {
		return menuId;
	}

	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public Integer getMenuStatus() {
		return menuStatus;
	}

	public void setMenuStatus(Integer menuStatus) {
		this.menuStatus = menuStatus;
	}

	public String getMenuUrl() {
		return menuUrl;
	}

	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}

	@Override
	public String toString() {
		return "Menu [menuId=" + menuId + ", menuName=" + menuName + ", menuStatus=" + menuStatus + ", menuUrl="
				+ menuUrl + "]";
	}

}
