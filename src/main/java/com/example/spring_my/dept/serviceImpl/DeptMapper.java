package com.example.spring_my.dept.serviceImpl;

import com.example.spring_my.dept.service.DeptDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DeptMapper {

    public List<?> selectDeptList(DeptDto entity) throws Exception;
    public List<?> sanctnList(DeptDto entity) throws Exception;
    public List<?> singleSanctnList(DeptDto entity) throws Exception;
    public List<?> selectMbrCd(DeptDto entity) throws Exception;

}
