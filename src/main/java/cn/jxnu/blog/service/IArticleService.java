package cn.jxnu.blog.service;

import java.util.HashMap;
import java.util.List;

import cn.jxnu.blog.entity.Article;
import cn.jxnu.blog.util.PageUtil;

public interface IArticleService {
	/**
	 * 分页查询文章
	 * @return
	 */
	List<Article> listArticle();

	/**
	 * 分页查询所有文章按浏览量排序
	 * @param currPage 当前页数
	 * @return
	 */
	PageUtil<Article> selectByPage(int currPage);

	/**
	 * 查询文章总数
	 * @return
	 */
	Integer articleCount();
	
	/**
	 * 按时间先后查询文章
	 * @return
	 */
	List<Article> selectByDate();

	//获得上一篇文章
	Article getNextArticle(Integer articleId);

	//获得下一篇文章
	Article getPrvArticle(Integer articleId);
	
	/**
	 * 根据分类栏查找文章
	 * @param menuId
	 * @return
	 */
	List<Article> selectByMenuId(Integer menuId);
	
	/**
	 * 根据id删除文章
	 * @param articleId
	 * @return 受影响行数
	 */
    int deleteById(Integer articleId);

    /**
     * 添加文章
     * @param record
     * @return 受影响行数
     */
    int insert(Article record);

    /**
     * 根据id查找文章
     * @param articleId
     * @return 查找到的文章
     */
    Article selectById(Integer articleId);

    /**
     * 根据文章id修改文章内容
     * @param articleId
     * @return
     */
    int updateById(Integer articleId);
}
