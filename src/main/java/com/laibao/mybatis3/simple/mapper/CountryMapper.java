package com.laibao.mybatis3.simple.mapper;

import com.laibao.mybatis3.simple.model.Country;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author laibao wang
 * @date 2017-12-26
 * @version 1.0
 */
public interface CountryMapper {
    public List<Country> selectAll();
    public void insertCountry(Country country);
    public Country selectCountryById(@Param("id") long id);
    public void updateCountry(Country country);
    public void deleteCountryById(@Param("id") long id);
}
