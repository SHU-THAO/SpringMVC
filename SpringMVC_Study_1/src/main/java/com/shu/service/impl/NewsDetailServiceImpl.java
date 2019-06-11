package com.shu.service.impl;


import com.shu.mapper.NewsCommentMapper;
import com.shu.mapper.NewsDetailMapper;
import com.shu.pojo.NewsDetail;
import com.shu.service.NewsDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("newsDetailService")
public class NewsDetailServiceImpl implements NewsDetailService {

    @Autowired
    private NewsDetailMapper newsDetailMapper;

    @Autowired
    private NewsCommentMapper newsCommentMapper;

    @Override
    public List<NewsDetail> queryAll() {
        return newsDetailMapper.queryAll();
    }

    @Override
    public List<NewsDetail> queryByTitle(String title) {
        return newsDetailMapper.queryByTitle(title);
    }

    @Override
    public Boolean deleteById(Integer id) {
        newsCommentMapper.deleteById(id);
        int row = newsDetailMapper.deleteById(id);
        return row==1?true:false;
    }
}
