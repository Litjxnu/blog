package cn.jxnu.blog.controller;

import cn.jxnu.blog.entity.*;
import cn.jxnu.blog.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;

import java.util.List;

/**
 * BaseController 功能描述:
 * <p>
 * 创建时间: 2018-11-17 14:58
 * 作者: liteng
 **/
public class BaseController {
    @Autowired
    protected IMenuService menuService;

    @Autowired
    protected IArticleService articleService;

    @Autowired
    protected ITagService tagService;

    @Autowired
    protected IBloggerService bloggerService;

    @Autowired
    protected ILinkService linkService;

    public void show(ModelMap modelMap) {
        List<Article> dateArticles = articleService.selectByDate();
        List<Menu> menus = menuService.selectMenus();
        List<Tag> tags = tagService.selectTags();
        List<Link> links =  linkService.selectAll();
        Blogger blogger = bloggerService.selectMes();

        modelMap.addAttribute("dateArticles", dateArticles);
        modelMap.addAttribute("tags", tags);
        modelMap.addAttribute("links", links);
        modelMap.addAttribute("menus", menus);
        modelMap.addAttribute("blogger", blogger);
    }
}
