package com.laibao.mybatis3.simple.mapper;

import com.laibao.mybatis3.simple.model.Country;

import java.util.List;

/**
 * @author laibao wang
 * @date 2017-12-24
 * @version 1.0
 */

public interface CountryMapper {
    List<Country> selectAll();
}
