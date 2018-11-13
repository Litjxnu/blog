package cn.jxnu.blog.entity;

import java.io.Serializable;
import java.util.Date;

public class Notice implements Serializable{

	private static final long serialVersionUID = 1L;

	private Integer noticeId;

    private String noticeTitle;

    private String noticeContent;

    private Date noticeCreateTime;

    private Date noticeUpdateTime;

    private Integer noticeStatus;

    private Integer noticeOrder;
	
	public Notice() {
		super();
	}

	public Integer getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(Integer noticeId) {
		this.noticeId = noticeId;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle == null ? null : noticeTitle.trim();
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent == null ? null : noticeContent.trim();
	}

	public Date getNoticeCreateTime() {
		return noticeCreateTime;
	}

	public void setNoticeCreateTime(Date noticeCreateTime) {
		this.noticeCreateTime = noticeCreateTime;
	}

	public Date getNoticeUpdateTime() {
		return noticeUpdateTime;
	}

	public void setNoticeUpdateTime(Date noticeUpdateTime) {
		this.noticeUpdateTime = noticeUpdateTime;
	}

	public Integer getNoticeStatus() {
		return noticeStatus;
	}

	public void setNoticeStatus(Integer noticeStatus) {
		this.noticeStatus = noticeStatus;
	}

	public Integer getNoticeOrder() {
		return noticeOrder;
	}

	public void setNoticeOrder(Integer noticeOrder) {
		this.noticeOrder = noticeOrder;
	}

	@Override
	public String toString() {
		return "Notice [noticeId=" + noticeId + ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent
				+ ", noticeCreateTime=" + noticeCreateTime + ", noticeUpdateTime=" + noticeUpdateTime
				+ ", noticeStatus=" + noticeStatus + ", noticeOrder=" + noticeOrder + "]";
	}

}
