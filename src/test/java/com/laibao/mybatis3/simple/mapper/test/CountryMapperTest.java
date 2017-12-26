package com.laibao.mybatis3.simple.mapper.test;

import com.alibaba.fastjson.JSON;
import com.laibao.mybatis3.simple.mapper.CountryMapper;
import com.laibao.mybatis3.simple.model.Country;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.BeforeClass;
import org.junit.Test;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

/**
 * @author laibao wang
 * @date 2017-12-26
 * @version 1.0
 */
public class CountryMapperTest {
    private static SqlSessionFactory sqlSessionFactory;

    @BeforeClass
    public static void init(){
        try {
            Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
            reader.close();
        } catch (IOException ignore) {
            ignore.printStackTrace();
        }
    }


    @Test
    public void testSelectAll(){
        SqlSession sqlSession = sqlSessionFactory.openSession();
        try {
            //List<Country> countryList = sqlSession.selectList("selectAll");
            CountryMapper countryMapper = sqlSession.getMapper(CountryMapper.class);
            List<Country> countryList = countryMapper.selectAll();
            //printCountryList(countryList);
            System.out.println(JSON.toJSONString(countryList));
        }catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            sqlSession.close();
        }
    }

    @Test
    public void testSelectById() {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        try {
            long id = 1;
            CountryMapper countryMapper = sqlSession.getMapper(CountryMapper.class);
            Country country = countryMapper.selectById(id);
            System.out.println(JSON.toJSONString(country));
        }catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            sqlSession.close();
        }
    }

    @Deprecated
    private void printCountryList(List<Country> countryList){
        for(Country country : countryList){
            System.out.printf("%-4d%4s%4s\n",country.getId(), country.getCountryName(), country.getCountryCode());
        }
    }
}
