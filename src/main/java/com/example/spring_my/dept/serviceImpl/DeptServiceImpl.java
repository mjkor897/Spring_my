package com.example.spring_my.dept.serviceImpl;

import com.example.spring_my.dept.service.DeptDto;
import com.example.spring_my.dept.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DeptServiceImpl implements DeptService {

    @Autowired
    private DeptMapper deptMapper;

    @Override
    public List<?> selectDeptList(DeptDto entity) throws Exception {
        return deptMapper.selectDeptList(entity);
    }

    @Override
    public List<?> sanctnList(DeptDto entity) throws Exception {
        return deptMapper.sanctnList(entity);
    }

    @Override
    public List<?> singleSanctnList(DeptDto entity) throws Exception {
        return deptMapper.singleSanctnList(entity);
    }

    @Override
    public List<?> selectMbrCd(DeptDto entity) throws Exception {
        return deptMapper.selectMbrCd(entity);
    }
}
