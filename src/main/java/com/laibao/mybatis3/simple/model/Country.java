package com.laibao.mybatis3.simple.model;

import java.io.Serializable;
import java.util.Date;

/**
 * @author  laibao wang
 * @date 2017-12-24
 * @version 1.0
 *
 */
public class Country implements Serializable{
	private static final long serialVersionUID = 8367952379941175031L;

	/**
	 * 自增主键
     */
	private long id;

	/**
	 * 国家的名称
     */
	private String countryName;

	/**
	 * 国家的编码
     */
	private String countryCode;

	/**
	 *  创建时间
     */
	private Date createdTime;

	/**
	 *  更新时间
     */
	private Date updatedTime;

	public Country() {
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public String getCountryCode() {
		return countryCode;
	}

	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}

	public Date getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}

	public Date getUpdatedTime() {
		return updatedTime;
	}

	public void setUpdatedTime(Date updatedTime) {
		this.updatedTime = updatedTime;
	}
}
