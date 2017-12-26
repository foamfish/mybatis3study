package com.laibao.mybatis3.simple.mapper;

import com.laibao.mybatis3.simple.model.Country;

import java.util.List;

/**
 * @author laibao wang
 * @date 2017-12-26
 * @version 1.0
 */

public interface CountryMapper {
    public List<Country> selectAll();
}
