package com.example.spring_my.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface BoardService {

    // 게시글 리스트 조회
    List<?> list(BoardDto entity) throws Exception;

    List<?> getBoardFileList(String unityId) throws Exception;

    // 게시글 상세정보 조회
    BoardDto view(BoardDto entity) throws Exception;

    // 게시글 저장
    int save(BoardDto entity) throws Exception;

    // 게시글 수정
    int update(BoardDto entity) throws Exception;

    // 게시글 삭제
    int delete(BoardDto entity) throws Exception;

    // 게시글 수 카운팅
    int count(BoardDto entity) throws Exception;

    // 조회수 카운팅
    int cntPlus(BoardDto entity) throws Exception;

    //BoardDto view(BoardDto entity) throws Exception;
    //List<?> list(BoardDto entity) throws Exception;
    //List<Map<String, Object>> selectList(Map<String, Object> paramMap) throws Exception;
    //public List<HashMap<String, Object>> selectList(HashMap<Object, Object> entity) throws Exception;

}
