package com.example.spring_my.file.serviceImpl;

import com.example.spring_my.file.service.FileDto;
import com.example.spring_my.file.service.FileService;
import com.example.spring_my.file.serviceImpl.mariaDB.MariaFileMapper;
import com.example.spring_my.util.MariaMyBatisConfig;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.swing.filechooser.FileSystemView;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

@Service
public class FileServiceImpl implements FileService {
    @Autowired
    private  FileMapper fileMapper;

    @Autowired
    private MariaFileMapper mariaFileMapper;

    @Override
    public List<?> getFileList(FileDto entity) throws Exception {
        return fileMapper.getFileList(entity);
    }

    @Override
    public void insertFile(List<FileDto> fileList) throws Exception {
        fileMapper.insertFile(fileList);
    }

    @Override
    public List<?> getFileMariaList(FileDto entity) throws Exception {
        return mariaFileMapper.getFileMariaList(entity);
    }

    @Override
    public void insertMariaFile(List<FileDto> fileList) throws Exception {
        mariaFileMapper.insertMariaFile(fileList);
    }
}
