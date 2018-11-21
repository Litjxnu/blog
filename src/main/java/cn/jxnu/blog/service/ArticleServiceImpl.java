package cn.jxnu.blog.service;

import java.util.HashMap;
import java.util.List;

import cn.jxnu.blog.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.jxnu.blog.entity.Article;
import cn.jxnu.blog.mapper.ArticleMapper;

@Service("articleService")
public class ArticleServiceImpl implements IArticleService{

	@Autowired
	private ArticleMapper articleMapper;
	
	public int deleteById(Integer articleId) {
		return articleMapper.deleteById(articleId);
	}

	public int insert(Article record) {
		return articleMapper.insert(record);
	}

	public Article selectById(Integer articleId) {
		return articleMapper.selectById(articleId);
	}

	public int updateById(Integer articleId) {
		return articleMapper.updateById(articleId);
	}

	public List<Article> listArticle() {
		return articleMapper.listArticle();
	}

	public PageUtil<Article> selectByPage(int currPage) {
		HashMap<String,Object> map = new HashMap<String,Object>();
		PageUtil<Article> pageUtil = new PageUtil<Article>();

		//封装当前页数
		pageUtil.setCurrPage(currPage);

		//每页显示的数据
		int pageSize=3;
		pageUtil.setPageSize(pageSize);

		//封装总记录数
		int totalCount = articleMapper.articleCount();
		pageUtil.setTotalCount(totalCount);

		//封装总页数
		double tc = totalCount;
		Double num =Math.ceil(tc/pageSize);//向上取整
		pageUtil.setTotalPage(num.intValue());

		map.put("start",(currPage-1)*pageSize);
		map.put("size", pageUtil.getPageSize());
		//封装每页显示的数据
		List<Article> lists = articleMapper.selectByPage(map);
		pageUtil.setLists(lists);

		return pageUtil;
	}

	public Integer articleCount() {
		return articleMapper.articleCount();
	}

	public List<Article> selectByDate() {
		return articleMapper.selectByDate();
	}

	public List<Article> selectByMenuId(Integer menuId) {
		return articleMapper.selectByMenuId(menuId);
	}
	
}
