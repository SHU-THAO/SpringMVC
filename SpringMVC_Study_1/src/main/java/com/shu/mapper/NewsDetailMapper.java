package com.shu.mapper;

import com.shu.pojo.NewsDetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NewsDetailMapper {

    List<NewsDetail> queryAll();

    List<NewsDetail> queryByTitle(@Param("title") String title);

    int deleteById(@Param("id") Integer id);
}
