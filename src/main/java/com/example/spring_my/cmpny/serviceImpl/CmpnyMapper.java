package com.example.spring_my.cmpny.serviceImpl;

import com.example.spring_my.cmpny.service.CmpnyDto;
import jakarta.servlet.http.HttpServletRequest;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Mapper
public interface CmpnyMapper {

    public CmpnyDto selectLogin(CmpnyDto entity) throws Exception;
    int insertCmpny(CmpnyDto entity) throws Exception;
}
