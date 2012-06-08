/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
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
