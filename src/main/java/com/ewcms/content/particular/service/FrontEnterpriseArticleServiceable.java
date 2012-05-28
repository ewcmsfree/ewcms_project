package com.ewcms.content.particular.service;

import java.util.List;

import com.ewcms.content.particular.model.EmployeArticle;
import com.ewcms.content.particular.model.EnterpriseArticle;


public interface FrontEnterpriseArticleServiceable {
	public List<EnterpriseArticle> findEnterpriseArticleLimit(Integer number);
	public List<EnterpriseArticle> findEnterpriseArticleByPage(int page, int row);
	public int getEnterpriseArticleCount(Integer channelId);
	public EnterpriseArticle getEnterpriseArticle(Long id);
	public List<EnterpriseArticle> findEnterpriseChannelArticleByPage(int channelId,int page, int row);
	public List<EnterpriseArticle> findEnterpriseChannelArticleLimit(Integer channelId,Integer number);
}
