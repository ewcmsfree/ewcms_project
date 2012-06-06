package com.ewcms.frontweb;

import java.io.Serializable;
import java.util.Date;

public class SectorArticleVO implements Serializable {
	private Long articleId;
	private String code;
	private Date PublicTime;
	private String type;
	private String name;


	public Long getArticleId() {
		return articleId;
	}
	public void setArticleId(Long articleId) {
		this.articleId = articleId;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Date getPublicTime() {
		return PublicTime;
	}
	public void setPublicTime(Date publicTime) {
		PublicTime = publicTime;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
