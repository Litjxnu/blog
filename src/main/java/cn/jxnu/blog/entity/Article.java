package cn.jxnu.blog.entity;

import java.io.Serializable;
import java.util.Date;
/**
 * 文章实体类
 * @author Lit
 *
 */
public class Article implements Serializable{
	
	private static final long serialVersionUID = 1L;

	private Integer articleId;

    private Integer articleBloggerId;
    
    private Integer articleMenuId;
    
    private String articleContent;

    private String articleTitle;

    private String articleTagIds;

    private Integer articleViewCount;

    private Integer articleCommentCount;

    private Integer articleLikeCount;

    private Date articlePostTime;

    private Date articleUpdateTime;

    private Integer articleIsComment;

    private Integer articleStatus;

    private Integer articleOrder;

	public Article() {
		super();
	}

	public Integer getArticleId() {
		return articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public Integer getArticleMenuId() {
		return articleMenuId;
	}

	public void setArticleMenuId(Integer articleMenuId) {
		this.articleMenuId = articleMenuId;
	}

	public Integer getArticleBloggerId() {
		return articleBloggerId;
	}

	public void setArticleBloggerId(Integer articleBloggerId) {
		this.articleBloggerId = articleBloggerId;
	}

	public String getArticleContent() {
		return articleContent;
	}

	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent == null ? null : articleContent.trim();
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		 this.articleTitle = articleTitle == null ? null : articleTitle.trim();
	}

	public String getArticleTagIds() {
		return articleTagIds;
	}

	public void setArticleTagIds(String articleTagIds) {
		this.articleTagIds = articleTagIds == null ? null : articleTagIds.trim();
	}

	public Integer getArticleViewCount() {
		return articleViewCount;
	}

	public void setArticleViewCount(Integer articleViewCount) {
		this.articleViewCount = articleViewCount;
	}

	public Integer getArticleCommentCount() {
		return articleCommentCount;
	}

	public void setArticleCommentCount(Integer articleCommentCount) {
		this.articleCommentCount = articleCommentCount;
	}

	public Integer getArticleLikeCount() {
		return articleLikeCount;
	}

	public void setArticleLikeCount(Integer articleLikeCount) {
		this.articleLikeCount = articleLikeCount;
	}

	public Date getArticlePostTime() {
		return articlePostTime;
	}

	public void setArticlePostTime(Date articlePostTime) {
		this.articlePostTime = articlePostTime;
	}

	public Date getArticleUpdateTime() {
		return articleUpdateTime;
	}

	public void setArticleUpdateTime(Date articleUpdateTime) {
		this.articleUpdateTime = articleUpdateTime;
	}

	public Integer getArticleIsComment() {
		return articleIsComment;
	}

	public void setArticleIsComment(Integer articleIsComment) {
		this.articleIsComment = articleIsComment;
	}

	public Integer getArticleStatus() {
		return articleStatus;
	}

	public void setArticleStatus(Integer articleStatus) {
		this.articleStatus = articleStatus;
	}

	public Integer getArticleOrder() {
		return articleOrder;
	}

	public void setArticleOrder(Integer articleOrder) {
		this.articleOrder = articleOrder;
	}

	@Override
	public String toString() {
		return "Article [articleId=" + articleId + ", articleBloggerId=" + articleBloggerId + ", articleMenuId="
				+ articleMenuId + ", articleContent=" + articleContent + ", articleTitle=" + articleTitle
				+ ", articleTagIds=" + articleTagIds + ", articleViewCount=" + articleViewCount
				+ ", articleCommentCount=" + articleCommentCount + ", articleLikeCount=" + articleLikeCount
				+ ", articlePostTime=" + articlePostTime + ", articleUpdateTime=" + articleUpdateTime
				+ ", articleIsComment=" + articleIsComment + ", articleStatus=" + articleStatus + ", articleOrder="
				+ articleOrder + "]";
	}

}
