package cn.jxnu.blog.mapper;

import java.util.HashMap;
import java.util.List;

import cn.jxnu.blog.entity.Article;

public interface ArticleMapper {
	/**
	 * 查询所有文章按浏览量排序
	 * @return
	 */
	List<Article> listArticle();

	/**
	 * 分页查询所有文章按浏览量排序
	 * @param map
	 * @return
	 */
	List<Article> selectByPage(HashMap<String,Object> map);

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
    Integer deleteById(Integer articleId);

    /**
     * 添加文章
     * @param record
     * @return 受影响行数
     */
    Integer insert(Article record);

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
    Integer updateById(Integer articleId);
}