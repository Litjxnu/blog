package cn.jxnu.blog.service;

import java.util.List;

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

	public List<Article> selectByDate() {
		return articleMapper.selectByDate();
	}

	public List<Article> selectByMenuId(Integer menuId) {
		return articleMapper.selectByMenuId(menuId);
	}
	
}
