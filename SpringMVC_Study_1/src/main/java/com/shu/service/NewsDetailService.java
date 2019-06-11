package com.shu.service;

import com.shu.pojo.NewsDetail;

import java.util.List;

public interface NewsDetailService {


    List<NewsDetail> queryAll();

    List<NewsDetail> queryByTitle(String title);

    Boolean deleteById(Integer id);
}
