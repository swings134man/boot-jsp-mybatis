package com.boot.jsp.home;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

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

    // Test List
    @GetMapping("/list")
    public String getTestList(Model model) {
        ListDTO dto1 = new ListDTO("1", "title1", "writer1");
        ListDTO dto2 = new ListDTO("2", "title2", "writer2");
        ListDTO dto3 = new ListDTO("3", "title3", "writer3");

        List<ListDTO> list = new ArrayList<>();
        list.add(dto1);
        list.add(dto2);
        list.add(dto3);

        model.addAttribute("list", list);

        return "listTest";
    }

}
