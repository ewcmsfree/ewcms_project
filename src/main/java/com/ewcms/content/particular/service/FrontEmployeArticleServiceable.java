package com.ewcms.content.particular.service;

import java.util.List;

import com.ewcms.content.particular.model.EmployeArticle;


public interface FrontEmployeArticleServiceable {
	public List<EmployeArticle> findEmployeArticleLimit(Integer number);
	public List<EmployeArticle> findEmployeArticleByPage(int page, int row) ;
	public int getEmployeArticleCount(Integer channelId);
	public EmployeArticle getEmployeArticle(Long id);
	public List<EmployeArticle> findEmployeChannelArticleLimit(Integer channelId,Integer number);
	public List<EmployeArticle> findEmployeChannelArticleByPage(int channelId,int page, int row);
}
