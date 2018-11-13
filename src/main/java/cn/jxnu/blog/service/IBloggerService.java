package cn.jxnu.blog.service;

import cn.jxnu.blog.entity.Blogger;

public interface IBloggerService {
	/**
	 * 删除博主信息
	 * @param BloggerId
	 * @return 受影响行数
	 */
    Integer deleteById(Integer BloggerId);

    /**
     * 添加博主信息
     * @param record
     * @return 受影响行数
     */
    Integer insert(Blogger record);

    /**
     * 查找博主信息
     * @return 博主信息
     */
    Blogger selectMes();

    /**
     * 更新博主信息
     * @param BloggerId
     * @return 受影响行数
     */
    Integer updateById(Integer BloggerId);
}
