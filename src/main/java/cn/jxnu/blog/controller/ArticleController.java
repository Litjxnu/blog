package cn.jxnu.blog.controller;

import java.util.List;

import cn.jxnu.blog.entity.Menu;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.jxnu.blog.entity.Article;


@Controller
@RequestMapping("/article")
public class ArticleController extends BaseController{

	@RequestMapping("/{articleId}.do")
	public String showArticle(@PathVariable("articleId") Integer articleId,
			ModelMap  modelMap) {
		show(modelMap);
		List<Article> listArticles = articleService.listArticle();
		Article article = listArticles.get(articleId);
        Article nextArticle = articleService.getNextArticle(articleId);
        Article prvArticle = articleService.getPrvArticle(articleId);

		modelMap.addAttribute("listArticles", listArticles);
		modelMap.addAttribute("article", article);
		modelMap.addAttribute("articleId", articleId);
		modelMap.addAttribute("nextArticle", nextArticle);
		modelMap.addAttribute("prvArticle", prvArticle);
		modelMap.addAttribute("max", articleService.articleCount()-1);
		modelMap.addAttribute("menu", menuService.selectMenuById(article.getArticleMenuId()));
		return "articleDetail";
	}
	
}
