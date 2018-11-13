package cn.jxnu.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.jxnu.blog.entity.Tag;
import cn.jxnu.blog.mapper.TagMapper;

@Service("tagService")
public class TagServiceImpl implements ITagService {

	@Autowired
	private TagMapper tagMapper;
	
	public int deleteById(Integer tagId) {
		return tagMapper.deleteById(tagId);
	}

	public int add(Tag record) {
		return tagMapper.insert(record);
	}

	public List<Tag> selectTagById(Integer tagId) {
		return tagMapper.selectTagById(tagId);
	}

	public int updateById(Integer tagId) {
		return tagMapper.updateById(tagId);
	}

	public List<Tag> selectTags() {
		return tagMapper.selectTags();
	}
	
}
