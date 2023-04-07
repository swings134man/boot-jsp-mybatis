package com.boot.jsp.home;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/************
 * @info : Home Link Controller
 * @name : HomeController
 * @date : 2023/04/07 5:05 PM
 * @author : SeokJun Kang(swings134@gmail.com)
 * @version : 1.0.0
 * @Description :
 ************/
@Controller
public class HomeController {

    @RequestMapping("/")
    public String goHome(Model model) {
        model.addAttribute("serverTime", System.currentTimeMillis());
        return "index";
    }

}
