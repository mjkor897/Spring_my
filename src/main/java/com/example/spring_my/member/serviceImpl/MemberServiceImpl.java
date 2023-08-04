package com.example.spring_my.member.serviceImpl;

import com.example.spring_my.member.service.MemberDto;
import com.example.spring_my.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper memberMapper;

    @Override
    public MemberDto selectLogin(MemberDto entity) throws Exception {
        return memberMapper.selectLogin(entity);
    }

    @Override
    public List<?> selectMbrInfo(MemberDto entity) throws Exception {
        return memberMapper.selectMbrInfo(entity);
    }

    @Override
    public List<?> srchSelectMbrInfo(MemberDto entity) throws Exception {
        return memberMapper.srchSelectMbrInfo(entity);
    }

    @Override
    public List<?> selectAddrBook(MemberDto entity) throws Exception {
        return memberMapper.selectAddrBook(entity);
    }
}

