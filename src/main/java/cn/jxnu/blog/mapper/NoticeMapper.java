package cn.jxnu.blog.mapper;

import cn.jxnu.blog.entity.Notice;

public interface NoticeMapper {
	/**
	 * 删除公告
	 * @param noticeId
	 * @return
	 */
    Integer deleteById(Integer noticeId);

    /**
     * 添加公告
     * @param record
     * @return
     */
    Integer insert(Notice record);

    /**
     * 查找公告
     * @return
     */
    Notice selectNotice();

    /**
     * 修改公告
     * @param noticeId
     * @return
     */
    Integer updateById(Integer noticeId);
}