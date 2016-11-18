package com.pumpkin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/11/15.
 */
@Controller
@RequestMapping("role")
public class RoleController {

    @RequestMapping("index")
    public String index() {
        return "index";
    }
}
