package cn.jxnu.blog.mapper;

import java.util.List;

import cn.jxnu.blog.entity.Menu;

public interface MenuMapper {
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
     * @param menuId
     * @return
     */
    List<Menu> selectMenus();
    
    /**
     * 修改便签
     * @param menuId
     * @return
     */
    Integer updateById(Integer menuId);
}
