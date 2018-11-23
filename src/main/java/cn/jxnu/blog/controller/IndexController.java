package cn.jxnu.blog.controller;

import cn.jxnu.blog.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.jxnu.blog.entity.Article;
import cn.jxnu.blog.entity.Notice;
import cn.jxnu.blog.service.INoticeService;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class IndexController extends BaseController{

	@Autowired
	private INoticeService noticeService;
	
	@RequestMapping("/index.do")
	public String showIndex(@RequestParam(value="currPage",defaultValue="1",required=false) Integer currPage,
							ModelMap modelMap) {
		show(modelMap);
		Notice notice = noticeService.selectNotice();
		
		modelMap.addAttribute("notice", notice);

		//分页数据
		PageUtil<Article> pageUtil = articleService.selectByPage(currPage);
		modelMap.addAttribute("pageUtil", pageUtil);
		modelMap.addAttribute("max", articleService.articleCount()-1);
		return "index";
	}

}
