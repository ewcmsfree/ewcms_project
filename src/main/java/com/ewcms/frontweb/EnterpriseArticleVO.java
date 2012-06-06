package com.ewcms.frontweb;

import java.io.Serializable;

import com.ewcms.content.particular.model.EnterpriseArticle;

public class EnterpriseArticleVO implements Serializable {
	private EnterpriseArticle enterpriseArticle;
	private ChannelVO channelVO;
	public EnterpriseArticle getEnterpriseArticle() {
		return enterpriseArticle;
	}
	public void setEnterpriseArticle(EnterpriseArticle enterpriseArticle) {
		this.enterpriseArticle = enterpriseArticle;
	}
	public ChannelVO getChannelVO() {
		return channelVO;
	}
	public void setChannelVO(ChannelVO channelVO) {
		this.channelVO = channelVO;
	}
	
	
}
