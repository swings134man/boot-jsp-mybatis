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

    // save2 - post
    // urlencoded not supported 에러시 아래의 방법 사용
    // @RequestBody 삭제 및 ~
    //@PostMapping(consumes = "application/x-www-form-urlencoded")
    @RequestMapping(value = "save2", method = RequestMethod.POST)
    @ResponseBody
    public BoardDTO save2(BoardDTO dto) {
        log.info("Controller {}", dto);
        return dto;
    }

    // TODO : 원래 쓰던 @Post('url') + Request Body 써보기
    @PostMapping(consumes = "application/x-www-form-urlencoded", value = "save3")
    @ResponseBody
    public BoardDTO save3(@RequestBody BoardDTO dto) {
        log.info("Controller {}", dto);
        return dto;
    }

}
