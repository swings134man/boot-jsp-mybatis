package com.boot.jsp.board.service;

import com.boot.jsp.board.dao.BoardDAO;
import com.boot.jsp.board.dto.BoardDTO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class BoardService {

    private final BoardDAO dao;

    // find List
    public List<BoardDTO> findList() {
        return dao.findList();
    }

}
