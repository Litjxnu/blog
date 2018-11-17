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
@RequestMapping("/menu")
public class MenuController extends BaseController{
	
	@RequestMapping("/{menuId}.do")
	public String showMenu(@PathVariable("menuId") Integer menuId,ModelMap  modelMap) {
		show(modelMap);
		List<Menu> menus = menuService.selectMenus();
		List<Article> menuArticles = articleService.selectByMenuId(menuId);

		modelMap.addAttribute("menuArticles", menuArticles);
		modelMap.addAttribute("menu", menus.get(menuId-1));
		return "menuList";
	}
}
