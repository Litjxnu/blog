package cn.jxnu.blog.service;

import java.util.List;

import cn.jxnu.blog.entity.Menu;

public interface IMenuService {
	/**
	 * 根据标签id删除标签
	 * @param menuId
	 * @return
	 */
    Integer deleteById(Integer menuId);

    /**
     * 添加标签
     * @param record
     * @return
     */
    Integer insert(Menu record);
    
    /**
     * 查找多个标签
     * @param
     * @return
     */
    List<Menu> selectMenus();

    /**
     * 根据id查找menu
     * @param menuId
     * @return
     */
    Menu selectMenuById(Integer menuId);
    
    /**
     * 修改便签
     * @param menuId
     * @return
     */
    Integer updateById(Integer menuId);
}
