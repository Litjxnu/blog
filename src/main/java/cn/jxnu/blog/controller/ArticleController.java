package cn.jxnu.blog.controller;

import java.util.List;

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

		modelMap.addAttribute("listArticles", listArticles);
		modelMap.addAttribute("article", listArticles.get(articleId));
		return "articleDetail";
	}
	
}
