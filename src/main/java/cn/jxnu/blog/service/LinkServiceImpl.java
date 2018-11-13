package cn.jxnu.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.jxnu.blog.entity.Link;
import cn.jxnu.blog.mapper.LinkMapper;

@Service("linkService")
public class LinkServiceImpl implements ILinkService {

	@Autowired
	private LinkMapper linkMapper;
	
	public Integer deleteById(Integer linkId) {
		return linkMapper.deleteById(linkId);
	}

	public Integer insert(Link record) {
		return linkMapper.insert(record);
	}

	public List<Link> selectAll() {
		return linkMapper.selectAll();
	}

	public Integer updateById(Integer linkId) {
		return linkMapper.updateById(linkId);
	}

}
