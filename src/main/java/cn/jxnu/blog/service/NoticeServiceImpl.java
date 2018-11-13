package cn.jxnu.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.jxnu.blog.entity.Notice;
import cn.jxnu.blog.mapper.NoticeMapper;

@Service("noticeService")
public class NoticeServiceImpl implements INoticeService {

	@Autowired
	private NoticeMapper noticeMapper;
	
	public Integer deleteById(Integer noticeId) {
		return noticeMapper.deleteById(noticeId);
	}

	public Integer insert(Notice record) {
		return noticeMapper.insert(record);
	}

	public Notice selectNotice() {
		return noticeMapper.selectNotice();
	}

	public Integer updateById(Integer noticeId) {
		return noticeMapper.updateById(noticeId);
	}

}
