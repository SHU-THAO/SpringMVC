package com.shu.controller;


import com.shu.pojo.NewsDetail;
import com.shu.service.NewsDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * 新闻的控制器
 */
@Controller
@RequestMapping("/news")
public class NewsDetailController {

    @Autowired
    private NewsDetailService newsDetailService;

    //查询所有的新闻
    @RequestMapping("/main")
    public String main(Model model){
        List<NewsDetail> list =  newsDetailService.queryAll();
        model.addAttribute("news",list);
        return "main";
    }


    @RequestMapping("/query/title")
    public String queryByTitle(@RequestParam("title") String title,Model model){

        model.addAttribute("title",title);
        List<NewsDetail> list =  newsDetailService.queryByTitle(title);
        model.addAttribute("news",list);
        return "main";
    }

    @RequestMapping("/delete/newsid/{id}")
    public String deleteById(@PathVariable("id") Integer id,Model model){

        model.addAttribute("id",id);
        Boolean result =  newsDetailService.deleteById(id);
        model.addAttribute("deleteFlag",result);
        List<NewsDetail> list =  newsDetailService.queryAll();
        model.addAttribute("news",list);
        return "main";
    }

}
