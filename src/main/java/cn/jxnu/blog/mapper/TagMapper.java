package cn.jxnu.blog.mapper;

import java.util.List;

import cn.jxnu.blog.entity.Tag;

public interface TagMapper {
	/**
	 * 根据标签id删除标签
	 * @param tagId
	 * @return
	 */
    Integer deleteById(Integer tagId);

    /**
     * 添加标签
     * @param record
     * @return
     */
    Integer insert(Tag record);

    /**
     * 查找标签
     * @param tagId
     * @return
     */
    List<Tag> selectTagById(Integer tagId);
    
    /**
     * 查找多个标签
     * @param tagId
     * @return
     */
    List<Tag> selectTags();
    
    /**
     * 修改便签
     * @param tagId
     * @return
     */
    Integer updateById(Integer tagId);
}