package com.example.spring_my.util;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;

import javax.sql.DataSource;
import java.io.IOException;

@Configuration
// mapper들이 있는 패키지경로
@MapperScan(basePackages = {"com.example.spring_my.board.serviceImpl", "com.example.spring_my.file.serviceImpl.mariaDB"}, sqlSessionFactoryRef="MariaSqlSessionFactory") //, sqlSessionFactoryRef = "SqlSessionFactory"
public class MariaMyBatisConfig {
    @Autowired
    ApplicationContext applicationContext;

    @Bean(name = "pjmDataSource")
    @ConfigurationProperties(prefix = "spring.pjm.datasource")
    public DataSource pjmDataSource() {
        System.out.println("(MariaDB PJM)dataSource빈 생성 성공");
        return DataSourceBuilder.create().build();
    }

    @Bean(name = "MariaSqlSessionFactory")
    public SqlSessionFactoryBean MariaSqlSessionFactory(@Qualifier("pjmDataSource") DataSource dataSource) throws IOException {
        SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
        factoryBean.setDataSource(dataSource);
        factoryBean.setConfigLocation(applicationContext.getResource("classpath:mybatis-config.xml"));
        factoryBean.setMapperLocations(applicationContext.getResources("classpath:mapper/mariaDB/*.xml"));
        System.out.println("dataSource:" + dataSource);
        System.out.println("SqlSessionFactory빈 생성 성공");
        return factoryBean;
    }

    @Bean(name = "MariaSqlSession")
    public SqlSessionTemplate MariaSqlSession(SqlSessionFactory sqlSessionFactory) {
        System.out.println("SqlSessionTemplate빈 생성 성공 !!!!");
        return new SqlSessionTemplate(sqlSessionFactory);
    }

    /*@Autowired
    LoginInterceptor loginInterceptor;

    public void addInterceptors(InterceptorRegistry registry) {
        System.out.println("인터셉터 읽기 성공");
        registry.addInterceptor(loginInterceptor)
                .excludePathPatterns("/sign", "/css/**", "/img/**", "/js/**", "/vendor/**"); // 회원가입, 정적 자원 제외
    }*/


}
