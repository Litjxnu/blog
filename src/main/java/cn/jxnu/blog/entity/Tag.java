package cn.jxnu.blog.entity;

import java.io.Serializable;

public class Tag implements Serializable{

	private static final long serialVersionUID = 1L;

	private Integer tagId;

    private String tagName;

    private Integer tagStatus;
	
	public Tag() {
		super();
	}

	public Integer getTagId() {
		return tagId;
	}

	public void setTagId(Integer tagId) {
		this.tagId = tagId;
	}

	public String getTagName() {
		return tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName == null ? null : tagName.trim();
	}

	public Integer getTagStatus() {
		return tagStatus;
	}

	public void setTagStatus(Integer tagStatus) {
		this.tagStatus = tagStatus;
	}

	@Override
	public String toString() {
		return "Tag [tagId=" + tagId + ", tagName=" + tagName + ", tagStatus=" + tagStatus + "]";
	}

}
