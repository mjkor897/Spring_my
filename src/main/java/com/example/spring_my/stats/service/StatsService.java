package com.example.spring_my.stats.service;

import com.example.spring_my.member.service.MemberDto;

import java.util.List;

public interface StatsService {

    StatsDto totalMbr(StatsDto entity) throws Exception;
    StatsDto avgMbr(StatsDto entity) throws Exception;
    StatsDto retireMbr(StatsDto entity) throws Exception;
    StatsDto yosMbr(StatsDto entity) throws Exception;
    StatsDto cntMbr(StatsDto entity) throws Exception;
    StatsDto cntTrl(StatsDto entity) throws Exception;
    StatsDto cntBgnde(StatsDto entity) throws Exception;
    StatsDto cntEnd(StatsDto entity) throws Exception;
    StatsDto cntGender(StatsDto entity) throws Exception;
    StatsDto cntRetire(StatsDto entity) throws Exception;
    StatsDto cntRank(StatsDto entity) throws Exception;
}
