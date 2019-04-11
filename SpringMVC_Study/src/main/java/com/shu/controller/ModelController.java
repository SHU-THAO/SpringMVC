package com.shu.controller;

import com.shu.pojo.Orders;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/orders")
public class ModelController {


    //ModelAndView Model + View
    @RequestMapping("/Model")
    public String bye(Model model){
        model.addAttribute("Model","摩登");
        //这里的return的就是ViewName
        //此时取得就是/jsp/model.jsp页面
        return "model";
    }

    @RequestMapping("/addOrder")
    public String addOrder(Model model){
        List<Orders> list = new ArrayList<>();
        Orders o = new Orders();
        o.setId(1);
        o.setName("psp");
        Orders o2 = new Orders();
        o2.setId(2);
        o2.setName("ps4");

        list.add(o);
        list.add(o2);

        model.addAttribute("orders",list);

        return  "orders";

    }

}
