package cn.jxnu.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.jxnu.blog.entity.Menu;
import cn.jxnu.blog.mapper.MenuMapper;

@Service("menuService")
public class MenuServiceImpl implements IMenuService{
	
	@Autowired
	private MenuMapper menuMapper;

	public Integer deleteById(Integer menuId) {
		return menuMapper.deleteById(menuId);
	}

	public Integer insert(Menu record) {
		return menuMapper.insert(record);
	}

	public List<Menu> selectMenus() {
		return menuMapper.selectMenus();
	}

	public Integer updateById(Integer menuId) {
		return menuMapper.updateById(menuId);
	}
	
}
