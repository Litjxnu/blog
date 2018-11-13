package cn.jxnu.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.jxnu.blog.entity.Blogger;
import cn.jxnu.blog.mapper.BloggerMapper;

@Service("bloggerService")
public class BloggerServiceImpl implements IBloggerService {

	@Autowired
	private BloggerMapper bloggerMapper;
	
	public Integer deleteById(Integer BloggerId) {
		return bloggerMapper.deleteById(BloggerId);
	}

	public Integer insert(Blogger record) {
		return bloggerMapper.insert(record);
	}

	public Blogger selectMes() {
		return bloggerMapper.selectMes();
	}

	public Integer updateById(Integer BloggerId) {
		return bloggerMapper.updateById(BloggerId);
	}

}
