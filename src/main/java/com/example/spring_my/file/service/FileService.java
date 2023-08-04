package com.example.spring_my.file.service;

import java.util.List;

public interface FileService {

    List<?> getFileList(FileDto entity) throws Exception;

    void insertFile(List<FileDto> fileList) throws Exception;

    /* 마리아 */
    List<?> getFileMariaList(FileDto entity) throws Exception;

    void insertMariaFile(List<FileDto> fileList) throws Exception;
}
