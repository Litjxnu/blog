package cn.jxnu.blog.entity;

import java.util.Date;

public class Blogger {

	private Integer bloggerId;

    private String bloggerName;

    private String bloggerPass;

    private String bloggerNickname;

    private String bloggerEmail;

    private String bloggerAvatar;

    private String bloggerLastLoginIp;

    private Date bloggerRegisterTime;

    private Date bloggerLastLoginTime;

    private Integer bloggerStatus;
	
	public Blogger() {
		super();
	}

	public Integer getBloggerId() {
		return bloggerId;
	}

	public void setBloggerId(Integer bloggerId) {
		this.bloggerId = bloggerId;
	}

	public String getBloggerName() {
		return bloggerName;
	}

	public void setBloggerName(String bloggerName) {
		this.bloggerName = bloggerName == null ? null : bloggerName.trim();
	}

	public String getBloggerPass() {
		return bloggerPass;
	}

	public void setBloggerPass(String bloggerPass) {
		this.bloggerPass = bloggerPass == null ? null : bloggerPass.trim();
	}

	public String getBloggerNickname() {
		return bloggerNickname;
	}

	public void setBloggerNickname(String bloggerNickname) {
		this.bloggerNickname = bloggerNickname == null ? null : bloggerNickname.trim();
	}

	public String getBloggerEmail() {
		return bloggerEmail;
	}

	public void setBloggerEmail(String bloggerEmail) {
		this.bloggerEmail = bloggerEmail == null ? null : bloggerEmail.trim();
	}

	public String getBloggerAvatar() {
		return bloggerAvatar;
	}

	public void setBloggerAvatar(String bloggerAvatar) {
		this.bloggerAvatar = bloggerAvatar == null ? null : bloggerAvatar.trim();
	}

	public String getBloggerLastLoginIp() {
		return bloggerLastLoginIp;
	}

	public void setBloggerLastLoginIp(String bloggerLastLoginIp) {
		this.bloggerLastLoginIp = bloggerLastLoginIp == null ? null : bloggerLastLoginIp.trim();
	}

	public Date getBloggerRegisterTime() {
		return bloggerRegisterTime;
	}

	public void setBloggerRegisterTime(Date bloggerRegisterTime) {
		this.bloggerRegisterTime = bloggerRegisterTime;
	}

	public Date getBloggerLastLoginTime() {
		return bloggerLastLoginTime;
	}

	public void setBloggerLastLoginTime(Date bloggerLastLoginTime) {
		this.bloggerLastLoginTime = bloggerLastLoginTime;
	}

	public Integer getBloggerStatus() {
		return bloggerStatus;
	}

	public void setBloggerStatus(Integer bloggerStatus) {
		this.bloggerStatus = bloggerStatus;
	}

	@Override
	public String toString() {
		return "Blogger [bloggerId=" + bloggerId + ", bloggerName=" + bloggerName + ", bloggerPass=" + bloggerPass
				+ ", bloggerNickname=" + bloggerNickname + ", bloggerEmail=" + bloggerEmail + ", bloggerAvatar="
				+ bloggerAvatar + ", bloggerLastLoginIp=" + bloggerLastLoginIp + ", bloggerRegisterTime="
				+ bloggerRegisterTime + ", bloggerLastLoginTime=" + bloggerLastLoginTime + ", bloggerStatus="
				+ bloggerStatus + "]";
	}

}
