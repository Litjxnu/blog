package cn.jxnu.blog.service;

import cn.jxnu.blog.entity.Notice;

public interface INoticeService {
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
