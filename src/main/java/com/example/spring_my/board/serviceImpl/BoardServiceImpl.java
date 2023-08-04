package com.example.spring_my.board.serviceImpl;

import com.example.spring_my.cmpny.serviceImpl.CmpnyMapper;
import jakarta.annotation.Resource;
import com.example.spring_my.board.service.BoardDto;
import com.example.spring_my.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BoardServiceImpl implements BoardService {

    @Autowired
    BoardMapper boardMapper;

    /*private final BoardMapper boardMapper;
    @Autowired
    public BoardServiceImpl(BoardMapper boardMapper){
        this.boardMapper = boardMapper;
    }*/

    @Override
    public List<?> list(BoardDto entity) throws Exception {
        return boardMapper.list(entity);
    }

    @Override
    public List<?> getBoardFileList(String unityId) throws Exception {
        return boardMapper.getBoardFileList(unityId);
    }

    @Override
    public BoardDto view(BoardDto entity) throws Exception {
        return boardMapper.view(entity);
    }

    @Override
    public int save(BoardDto entity) throws Exception {
        return boardMapper.save(entity);
    }

    @Override
    public int update(BoardDto entity) throws Exception {
        return boardMapper.update(entity);
    }

    @Override
    public int delete(BoardDto entity) throws Exception {
        return boardMapper.delete(entity);
    }

    @Override
    public int count(BoardDto entity) throws Exception {
        return boardMapper.count(entity);
    }

    @Override
    public int cntPlus(BoardDto entity) throws Exception {
        return boardMapper.cntPlus(entity);
    }
}
