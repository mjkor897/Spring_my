package com.example.spring_my.sanctn.service;

import java.util.List;

public interface SanctnService {

    List<?> list(SanctnDto entity) throws Exception;
    public SanctnDto view(SanctnDto entity) throws Exception;

    List<?> selectSanctnUser(SanctnDto entity) throws Exception;

    List<?> selectSanctnCcUser(SanctnDto entity) throws Exception;

    List<?> getSanctnFileList(String unityId) throws Exception;
    List<?> selectSanctnList(SanctnDto entity) throws Exception;

    public SanctnDto insert(SanctnDto entity) throws Exception;

    int sttusUpdate(SanctnDto entity) throws Exception;
    int sttusDocUpdate(SanctnDto entity) throws Exception;
    List<?> selectSanctnCcList(SanctnDto entity) throws Exception;

}
