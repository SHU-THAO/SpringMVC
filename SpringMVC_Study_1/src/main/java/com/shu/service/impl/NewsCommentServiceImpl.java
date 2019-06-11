package com.shu.service.impl;

import com.shu.mapper.NewsCommentMapper;
import com.shu.mapper.NewsDetailMapper;
import com.shu.pojo.NewsComment;
import com.shu.pojo.NewsDetail;
import com.shu.service.NewsCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;


@Service("newsCommentService")
public class NewsCommentServiceImpl implements NewsCommentService {

    @Autowired
    private NewsCommentMapper newsCommentMapper;

    @Override
    public List<NewsComment> queryCommentsById(Integer id) {
        NewsDetail newsDetail = new NewsDetail();
        newsDetail.setId(id);
        return newsCommentMapper.queryCommentsById(newsDetail);
    }

    @Override
    public boolean addComments(NewsComment newsComment) {
        newsComment.setCreatDate(new Date());
        int row = newsCommentMapper.addComments(newsComment);
        return row==1 ? true:false;
    }
}
