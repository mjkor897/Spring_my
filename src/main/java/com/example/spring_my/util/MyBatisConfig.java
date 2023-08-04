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
import org.springframework.context.annotation.Primary;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;

import javax.sql.DataSource;
import java.io.IOException;

@Configuration
// mapper들이 있는 패키지경로
@MapperScan(basePackages = {"com.example.spring_my.cmpny.serviceImpl"
        , "com.example.spring_my.member.serviceImpl", "com.example.spring_my.dept.serviceImpl", "com.example.spring_my.mail.serviceImpl"
        ,"com.example.spring_my.stats.serviceImpl", "com.example.spring_my.sanctn.serviceImpl", "com.example.spring_my.file.serviceImpl"}, sqlSessionFactoryRef="sqlSessionFactory") //, sqlSessionFactoryRef = "SqlSessionFactory"
public class MyBatisConfig {
    @Autowired
    ApplicationContext applicationContext;

    //@Value("${spring.datasource.mapper-locations}")
    //String mPath;

    @Bean(name = "dataSource")
    @Primary
    @ConfigurationProperties(prefix = "spring.orcl.datasource")
    public DataSource DataSource() {
        System.out.println("dataSource빈 생성 성공");
        return DataSourceBuilder.create().build();
    }

    @Bean
    @Primary
    public SqlSessionFactoryBean sqlSessionFactory(@Qualifier("dataSource") DataSource dataSource) throws IOException {
        SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
        factoryBean.setDataSource(dataSource);
        factoryBean.setConfigLocation(applicationContext.getResource("classpath:mybatis-config.xml"));
        factoryBean.setMapperLocations(applicationContext.getResources("classpath:mapper/*.xml"));
        System.out.println("dataSource:" + dataSource);
        System.out.println("SqlSessionFactory빈 생성 성공");
        return factoryBean;
    }

    @Bean
    @Primary
    public SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory) {
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
