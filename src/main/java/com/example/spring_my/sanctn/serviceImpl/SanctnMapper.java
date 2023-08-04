package com.example.spring_my.sanctn.serviceImpl;

import com.example.spring_my.sanctn.service.SanctnDto;
import org.apache.ibatis.annotations.Mapper;
import java.util.List;

@Mapper
public interface SanctnMapper {

    List<?> list(SanctnDto entity) throws Exception;

    public SanctnDto view(SanctnDto entity) throws Exception;

    List<?> selectSanctnUser(SanctnDto entity) throws Exception;

    List<?> selectSanctnCcUser(SanctnDto entity) throws Exception;
    List<?> selectSanctnList(SanctnDto entity) throws Exception;
    List<?> selectSanctnCcList(SanctnDto entity) throws Exception;

    List<?> getSanctnFileList(String unityId) throws Exception;
    int insertSanctn(SanctnDto entity) throws Exception;
    int insertSanctnUser(SanctnDto entity) throws Exception;
    int insertSanctnCcUser(SanctnDto entity) throws Exception;
    int sttusUpdate(SanctnDto entity) throws Exception;
    int sttusDocUpdate(SanctnDto entity) throws Exception;

}
