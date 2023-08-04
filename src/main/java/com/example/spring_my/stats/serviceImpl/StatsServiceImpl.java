package com.example.spring_my.stats.serviceImpl;

import com.example.spring_my.stats.service.StatsDto;
import com.example.spring_my.stats.service.StatsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class StatsServiceImpl implements StatsService {

    @Autowired
    StatsMapper statsMapper;

    @Override
    public StatsDto totalMbr(StatsDto entity) throws Exception {
        return statsMapper.totalMbr(entity);
    }

    @Override
    public StatsDto avgMbr(StatsDto entity) throws Exception {
        return statsMapper.avgMbr(entity);
    }

    @Override
    public StatsDto retireMbr(StatsDto entity) throws Exception {
        return statsMapper.retireMbr(entity);
    }

    @Override
    public StatsDto yosMbr(StatsDto entity) throws Exception {
        return statsMapper.yosMbr(entity);
    }

    @Override
    public StatsDto cntMbr(StatsDto entity) throws Exception {
        return statsMapper.cntMbr(entity);
    }

    @Override
    public StatsDto cntTrl(StatsDto entity) throws Exception {
        return statsMapper.cntTrl(entity);
    }

    @Override
    public StatsDto cntBgnde(StatsDto entity) throws Exception {
        return statsMapper.cntBgnde(entity);
    }

    @Override
    public StatsDto cntEnd(StatsDto entity) throws Exception {
        return statsMapper.cntEnd(entity);
    }

    @Override
    public StatsDto cntGender(StatsDto entity) throws Exception {
        return statsMapper.cntGender(entity);
    }

    @Override
    public StatsDto cntRetire(StatsDto entity) throws Exception {
        return statsMapper.cntRetire(entity);
    }

    @Override
    public StatsDto cntRank(StatsDto entity) throws Exception {
        return statsMapper.cntRank(entity);
    }
}
