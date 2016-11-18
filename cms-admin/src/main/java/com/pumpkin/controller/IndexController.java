package com.pumpkin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/11/14.
 */
@Controller
public class IndexController {

    @RequestMapping("index")
    public String index(){
        return "index";
    }
}
