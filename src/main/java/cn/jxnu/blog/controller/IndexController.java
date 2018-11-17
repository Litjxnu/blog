package cn.jxnu.blog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.jxnu.blog.entity.Article;
import cn.jxnu.blog.entity.Blogger;
import cn.jxnu.blog.entity.Link;
import cn.jxnu.blog.entity.Menu;
import cn.jxnu.blog.entity.Notice;
import cn.jxnu.blog.entity.Tag;
import cn.jxnu.blog.service.IArticleService;
import cn.jxnu.blog.service.IBloggerService;
import cn.jxnu.blog.service.ILinkService;
import cn.jxnu.blog.service.IMenuService;
import cn.jxnu.blog.service.INoticeService;
import cn.jxnu.blog.service.ITagService;

@Controller
public class IndexController extends BaseController{

	@Autowired
	private INoticeService noticeService;
	
	@RequestMapping("/index.do")
	public String showIndex(ModelMap modelMap) {
		show(modelMap);
		List<Article> listArticles = articleService.listArticle();
		Notice notice = noticeService.selectNotice();
		
		modelMap.addAttribute("listArticles", listArticles);
		modelMap.addAttribute("notice", notice);
		return "index";
	}
}
