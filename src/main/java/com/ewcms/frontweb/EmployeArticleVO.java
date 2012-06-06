package com.ewcms.frontweb;

import java.io.Serializable;

import com.ewcms.content.particular.model.EmployeArticle;

public class EmployeArticleVO implements Serializable {
	private EmployeArticle employeArticle;
	private ChannelVO channelVO;
	public EmployeArticle getEmployeArticle() {
		return employeArticle;
	}
	public void setEmployeArticle(EmployeArticle employeArticle) {
		this.employeArticle = employeArticle;
	}
	public ChannelVO getChannelVO() {
		return channelVO;
	}
	public void setChannelVO(ChannelVO channelVO) {
		this.channelVO = channelVO;
	}
	
}
