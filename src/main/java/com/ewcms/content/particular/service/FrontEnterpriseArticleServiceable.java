/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
package com.ewcms.content.particular.service;

import java.util.List;

import com.ewcms.content.particular.model.EmployeArticle;
import com.ewcms.content.particular.model.EnterpriseArticle;
import com.ewcms.content.particular.model.EnterpriseBasic;


public interface FrontEnterpriseArticleServiceable {
	public List<EnterpriseArticle> findEnterpriseArticleLimit(Integer number);
	public List<EnterpriseArticle> findEnterpriseArticleByPage(int page, int row);
	public int getEnterpriseArticleCount(Integer channelId);
	public EnterpriseArticle getEnterpriseArticle(Long id);
	public List<EnterpriseArticle> findEnterpriseChannelArticleByPage(int channelId,int page, int row);
	public List<EnterpriseArticle> findEnterpriseChannelArticleLimit(Integer channelId,Integer number);
	public List<EnterpriseBasic> findEnterpriseBasicAll(Integer number);
	public int getEnterpriseBasicCount();
}
