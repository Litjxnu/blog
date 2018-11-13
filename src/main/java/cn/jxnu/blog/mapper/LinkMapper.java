package cn.jxnu.blog.mapper;

import java.util.List;

import cn.jxnu.blog.entity.Link;

public interface LinkMapper {
	/**
	 * 删除
	 * @param linkId
	 * @return
	 */
    Integer deleteById(Integer linkId);

    /**
     * 添加
     * @param record
     * @return
     */
    Integer insert(Link record);

    /**
     * 查找
     * @return
     */
    List<Link> selectAll();

    /**
     * 修改
     * @param linkId
     * @return
     */
    Integer updateById(Integer linkId);
}