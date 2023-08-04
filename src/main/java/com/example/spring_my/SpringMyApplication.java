package com.example.spring_my;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication/*
@MapperScan("com.example.spring_my.board.serviceImpl")*/
public class SpringMyApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringMyApplication.class, args);

    }

}
