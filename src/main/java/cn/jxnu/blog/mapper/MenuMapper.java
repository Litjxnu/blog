package cn.jxnu.blog.mapper;

import java.util.List;

import cn.jxnu.blog.entity.Menu;

public interface MenuMapper {
	/**
	 * 根据标签id删除menu
	 * @param menuId
	 * @return
	 */
    Integer deleteById(Integer menuId);

    /**
     * 添加menu
     * @param record
     * @return
     */
    Integer insert(Menu record);

    /**
     * 查找多个menu
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
     * 修改menu
     * @param menuId
     * @return
     */
    Integer updateById(Integer menuId);
}
