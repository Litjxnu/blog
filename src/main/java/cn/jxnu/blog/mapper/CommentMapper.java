package cn.jxnu.blog.mapper;

import cn.jxnu.blog.entity.Comment;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer commentId);

    int insert(Comment record);

    Comment selectByPrimaryKey(Integer commentId);

    int updateByPrimaryKey(Integer commentId);
}