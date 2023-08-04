package com.example.spring_my.file.serviceImpl;

import com.example.spring_my.file.service.FileDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FileMapper {

    List<?> getFileList(FileDto entity) throws Exception;

    void insertFile(List<FileDto> fileList) throws Exception;

}
