package cn.jxnu.blog.entity;

import java.io.Serializable;
import java.util.Date;

public class Link implements Serializable{
	
	private static final long serialVersionUID = 1L;

	private Integer linkId;

    private String linkUrl;

    private String linkName;

    private Date linkUpdateTime;

    private Date linkCreateTime;

    private Integer linkOrder;

    private Integer linkStatus;

    public Integer getLinkId() {
        return linkId;
    }

    public void setLinkId(Integer linkId) {
        this.linkId = linkId;
    }

    public String getLinkUrl() {
        return linkUrl;
    }

    public void setLinkUrl(String linkUrl) {
        this.linkUrl = linkUrl == null ? null : linkUrl.trim();
    }

    public String getLinkName() {
        return linkName;
    }

    public void setLinkName(String linkName) {
        this.linkName = linkName == null ? null : linkName.trim();
    }

    public Date getLinkUpdateTime() {
        return linkUpdateTime;
    }

    public void setLinkUpdateTime(Date linkUpdateTime) {
        this.linkUpdateTime = linkUpdateTime;
    }

    public Date getLinkCreateTime() {
        return linkCreateTime;
    }

    public void setLinkCreateTime(Date linkCreateTime) {
        this.linkCreateTime = linkCreateTime;
    }

    public Integer getLinkOrder() {
        return linkOrder;
    }

    public void setLinkOrder(Integer linkOrder) {
        this.linkOrder = linkOrder;
    }

    public Integer getLinkStatus() {
        return linkStatus;
    }

    public void setLinkStatus(Integer linkStatus) {
        this.linkStatus = linkStatus;
    }

	@Override
	public String toString() {
		return "Link [linkId=" + linkId + ", linkUrl=" + linkUrl + ", linkName=" + linkName + ", linkUpdateTime="
				+ linkUpdateTime + ", linkCreateTime=" + linkCreateTime + ", linkOrder=" + linkOrder + ", linkStatus="
				+ linkStatus + "]";
	}
    
}