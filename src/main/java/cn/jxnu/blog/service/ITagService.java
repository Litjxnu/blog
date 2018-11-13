package cn.jxnu.blog.service;

import java.util.List;

import cn.jxnu.blog.entity.Tag;

public interface ITagService {
	/**
	 * 根据标签id删除标签
	 * @param tagId
	 * @return
	 */
    int deleteById(Integer tagId);

    /**
     * 添加标签
     * @param record
     * @return
     */
    int add(Tag record);

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
    int updateById(Integer tagId);
}
