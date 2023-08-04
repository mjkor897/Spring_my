package com.example.spring_my.file.serviceImpl.mariaDB;

import com.example.spring_my.file.service.FileDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MariaFileMapper {

    List<?> getFileMariaList(FileDto entity) throws Exception;

    void insertMariaFile(List<FileDto> fileList) throws Exception;
}
