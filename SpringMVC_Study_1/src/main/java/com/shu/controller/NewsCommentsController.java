package com.shu.controller;

import com.shu.pojo.NewsComment;
import com.shu.service.NewsCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/comments")
public class NewsCommentsController {

    @Autowired
    private NewsCommentService newsCommentService;

    @RequestMapping("/query/newsid/{id}")
    public String queryCommentsById(@PathVariable("id") Integer id, Model model){

        model.addAttribute("id",id);
        List<NewsComment> list =  newsCommentService.queryCommentsById(id);
        model.addAttribute("Comments",list);
        return "comments";
    }

    @RequestMapping("/add/newsid/{id}")
    public String addComments(@PathVariable("id") Integer id, Model model){

        model.addAttribute("id",id);
        return "addComment";
    }

    @RequestMapping("/add/newsComment")
    public String addComments(NewsComment newsComment, Model model){
        boolean result = newsCommentService.addComments(newsComment);
        List<NewsComment> list =  newsCommentService.queryCommentsById(newsComment.getNewsDetail().getId());
        model.addAttribute("Comments",list);
        return "comments";
    }
}
