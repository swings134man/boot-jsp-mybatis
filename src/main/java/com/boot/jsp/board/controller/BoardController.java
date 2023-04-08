package com.boot.jsp.board.controller;

import com.boot.jsp.board.dto.BoardDTO;
import com.boot.jsp.board.service.BoardService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
@RequestMapping("/board/v1/")
public class BoardController {
    private final BoardService service;

    // findList
    @GetMapping("findList")
    public String findList(Model model) {
        List<BoardDTO> list = service.findList();

        model.addAttribute("boardList", list);

        return "board/boardList";
    }
}
