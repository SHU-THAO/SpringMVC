package com.shu.service;

import com.shu.pojo.NewsComment;

import java.util.List;

public interface NewsCommentService {


    List<NewsComment> queryCommentsById(Integer id);

    boolean addComments(NewsComment newsComment);
}
