package com.example.spring_my.cmpny.serviceImpl;

import com.example.spring_my.cmpny.service.CmpnyDto;
import com.example.spring_my.cmpny.service.CmpnyService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CmpnyServiceImpl implements CmpnyService {

    /*private final CmpnyMapper cmpnyMapper;
    @Autowired
    public CmpnyServiceImpl(CmpnyMapper cmpnyMapper){
        this.cmpnyMapper = cmpnyMapper;
    }*/
    @Autowired // required를 false로 하여 의존성주입 받아도 예외처리 하도록 함.
    private CmpnyMapper cmpnyMapper;

    @Override
    public int insertCmpny(CmpnyDto entity, HttpServletRequest request) throws Exception {
        return cmpnyMapper.insertCmpny(entity);
    }

    @Override
    public CmpnyDto selectLogin(CmpnyDto entity) throws Exception {
        return cmpnyMapper.selectLogin(entity);
    }
}

