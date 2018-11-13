//package cn.jxnu.blog.controller;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import cn.jxnu.blog.entity.Article;
//import cn.jxnu.blog.entity.Blogger;
//import cn.jxnu.blog.entity.Menu;
//import cn.jxnu.blog.entity.Tag;
//import cn.jxnu.blog.service.IArticleService;
//import cn.jxnu.blog.service.IBloggerService;
//import cn.jxnu.blog.service.IMenuService;
//import cn.jxnu.blog.service.ITagService;
//
//@Controller
//public class CommonController {
//	@Autowired
//	private IArticleService articleService;
//	
//	@Autowired
//	private ITagService tagService;
//	
//	@Autowired
//	private IBloggerService bloggerService;
//	
//	@Autowired
//	private IMenuService menuService;
//	
//	@RequestMapping("")
//	public String showIndex(ModelMap modelMap) {
//		List<Article> dateArticles = articleService.selectByDate();
//		List<Menu> menus = menuService.selectMenus();
//		List<Tag> tags = tagService.selectTags();
//		Blogger blogger = bloggerService.selectMes();
//		
//		modelMap.addAttribute("dateArticles", dateArticles);
//		modelMap.addAttribute("menus", menus);
//		modelMap.addAttribute("tags", tags);
//		modelMap.addAttribute("blogger", blogger);
//		return "index";
//	}
//}
