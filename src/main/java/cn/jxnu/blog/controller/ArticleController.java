package cn.jxnu.blog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.jxnu.blog.entity.Article;
import cn.jxnu.blog.entity.Blogger;
import cn.jxnu.blog.entity.Link;
import cn.jxnu.blog.entity.Menu;
import cn.jxnu.blog.entity.Tag;
import cn.jxnu.blog.service.IArticleService;
import cn.jxnu.blog.service.IBloggerService;
import cn.jxnu.blog.service.ILinkService;
import cn.jxnu.blog.service.IMenuService;
import cn.jxnu.blog.service.ITagService;

@Controller
@RequestMapping("/article")
public class ArticleController {
	
	@Autowired
	private IMenuService menuService;
	
	@Autowired
	private IArticleService articleService;
	
	@Autowired
	private ITagService tagService;
	
	@Autowired
	private IBloggerService bloggerService;
	
	@Autowired
	private ILinkService linkService;
	
	@RequestMapping("/{articleId}.do")
	public String showArticle(@PathVariable("articleId") Integer articleId,
			ModelMap  modelMap) {
		List<Article> listArticles = articleService.listArticle();
		List<Article> dateArticles = articleService.selectByDate();
		List<Menu> menus = menuService.selectMenus();
		List<Tag> tags = tagService.selectTags();
		List<Link> links =  linkService.selectAll();
		Blogger blogger = bloggerService.selectMes();
		
		modelMap.addAttribute("listArticles", listArticles);
		modelMap.addAttribute("dateArticles", dateArticles);
		modelMap.addAttribute("tags", tags);
		modelMap.addAttribute("links", links);
		modelMap.addAttribute("menus", menus);
		modelMap.addAttribute("article", listArticles.get(articleId));
		modelMap.addAttribute("blogger", blogger);
		return "articleDetail";
	}
	
}
