package com.ewcms.content.particular;

import java.util.List;

import com.ewcms.content.particular.model.EmployeArticle;
import com.ewcms.content.particular.model.EnterpriseArticle;
import com.ewcms.content.particular.model.ProjectArticle;

public interface FrontParticularFacable {
	public ProjectArticle findProjectArticleById(Long id);
	public List<ProjectArticle> findProjectArticleLimit(Integer number);
	public List<ProjectArticle> findProjectArticleByPage(int page, int row) ;
	public int getProjectArticleCount(Integer channelId);
	public List<ProjectArticle> findProjectChannellArticleLimit(Integer channelId,Integer number);
	public List<ProjectArticle> findProjectChannelArticleByPage(int channelId,int page, int row);
	
	public List<EnterpriseArticle> findEnterpriseArticleLimit(Integer number);
	public List<EnterpriseArticle> findEnterpriseArticleByPage(int page, int row);
	public int getEnterpriseArticleCount(Integer channelId);
	public EnterpriseArticle getEnterpriseArticle(Long id);	
	public List<EnterpriseArticle> findEnterpriseChannelArticleByPage(int channelId,int page, int row);
	public List<EnterpriseArticle> findEnterpriseChannelArticleLimit(Integer channelId,Integer number);
	
	public List<EmployeArticle> findEmployeArticleLimit(Integer number);
	public List<EmployeArticle> findEmployeArticleByPage(int page, int row) ;
	public int getEmployeArticleCount(Integer channelId);
	public EmployeArticle getEmployeArticle(Long id);
	public List<EmployeArticle> findEmployeChannelArticleLimit(Integer channelId,Integer number);
	public List<EmployeArticle> findEmployeChannelArticleByPage(int channelId,int page, int row);	
}
