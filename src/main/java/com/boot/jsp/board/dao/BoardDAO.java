package com.boot.jsp.board.dao;

import com.boot.jsp.board.dto.BoardDTO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
@Slf4j
public class BoardDAO {

    private final SqlSessionTemplate template;


    // List 전체 조회
    public List<BoardDTO> findList() {
        List<BoardDTO> result = template.selectList("boardMapper.boardList");
        return result;
    }

    // 게시판 save
    public BoardDTO saveBoard(BoardDTO dto) {
        int insert = template.insert("boardMapper.boardSave", dto);
        if(insert == 1) {
            return dto;
        }else {
            throw new RuntimeException("save 실패");
        }
    }
}
