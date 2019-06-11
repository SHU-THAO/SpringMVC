package com.shu.controller;

import com.shu.pojo.User;
import com.shu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String login(User user, HttpSession session){
        user = userService.exists(user);
        if(user!=null){
            //数据库检查
            session.setAttribute("SESSION_USER",user);
            return "user";
        }else {
            return "redirect:/login.jsp";
        }
    }
}
