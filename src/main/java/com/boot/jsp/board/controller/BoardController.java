package com.boot.jsp.board.controller;

import com.boot.jsp.board.dto.BoardDTO;
import com.boot.jsp.board.service.BoardService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

    // save - post
    @PostMapping("savePost")
    @ResponseBody
    public BoardDTO savePost(@RequestBody BoardDTO dto, Model model) {
        log.info("Controller = {}", dto);
        BoardDTO boardDTO = service.boardSave(dto);

        // TODO : 완료 하면 게시판 상세 페이지 조회를 통해 return 할것.
//        model.addAttribute("boardDTO", dto);
//        return "board/boardDetail";

        return boardDTO;
    }

}
