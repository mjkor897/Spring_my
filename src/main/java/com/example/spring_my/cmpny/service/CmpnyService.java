package com.example.spring_my.cmpny.service;

import jakarta.servlet.http.HttpServletRequest;

public interface CmpnyService {

    public CmpnyDto selectLogin(CmpnyDto entity) throws Exception;
    int insertCmpny(CmpnyDto entity, HttpServletRequest request) throws Exception;

}
