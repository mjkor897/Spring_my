package com.example.spring_my.member.serviceImpl;

import com.example.spring_my.member.service.MemberDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MemberMapper {

    public MemberDto selectLogin(MemberDto entity) throws Exception;

    List<?> selectMbrInfo(MemberDto entity) throws Exception;

    List<?> srchSelectMbrInfo(MemberDto entity) throws Exception;
    List<?> selectAddrBook(MemberDto entity) throws Exception;
}
