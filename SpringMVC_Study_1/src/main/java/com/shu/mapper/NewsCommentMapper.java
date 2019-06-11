package com.shu.mapper;

import com.shu.pojo.NewsComment;
import com.shu.pojo.NewsDetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NewsCommentMapper {


    List<NewsComment> queryCommentsById(NewsDetail newsDetail);

    int addComments(NewsComment newsComment);

    void deleteById(@Param("id") Integer id);
}
