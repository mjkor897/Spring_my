package com.example.spring_my.member.service;

import java.util.List;

public interface MemberService {

    public MemberDto selectLogin(MemberDto entity) throws Exception;
    List<?> selectMbrInfo(MemberDto entity) throws Exception;
    List<?> srchSelectMbrInfo(MemberDto entity) throws Exception;
    List<?> selectAddrBook(MemberDto entity) throws Exception;
}
