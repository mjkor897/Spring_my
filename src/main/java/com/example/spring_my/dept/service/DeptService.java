package com.example.spring_my.dept.service;

import java.util.List;

public interface DeptService {

    public List<?> selectDeptList(DeptDto entity) throws Exception;
    public List<?> sanctnList(DeptDto entity) throws Exception;
    public List<?> singleSanctnList(DeptDto entity) throws Exception;
    public List<?> selectMbrCd(DeptDto entity) throws Exception; //ajax
}
