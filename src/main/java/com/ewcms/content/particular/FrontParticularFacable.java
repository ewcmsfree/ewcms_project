/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
package com.ewcms.content.particular;

import java.util.List;

import com.ewcms.content.particular.model.ArticleMain;
import com.ewcms.content.particular.model.EmployeArticle;
import com.ewcms.content.particular.model.EmployeBasic;
import com.ewcms.content.particular.model.EnterpriseArticle;
import com.ewcms.content.particular.model.EnterpriseBasic;
import com.ewcms.content.particular.model.Organ;
import com.ewcms.content.particular.model.ProjectArticle;
import com.ewcms.content.particular.model.ProjectBasic;
import com.ewcms.frontweb.ArticleMainVO;
import com.ewcms.frontweb.ChannelVO;
import com.ewcms.frontweb.EmployeArticleVO;
import com.ewcms.frontweb.EnterpriseArticleVO;
import com.ewcms.frontweb.ProjectArticleVO;
import com.ewcms.frontweb.SectorArticleVO;

public interface FrontParticularFacable {
	public ProjectArticle findProjectArticleById(Long id);
	public List<ProjectArticle> findProjectArticleLimit(Integer number);
	public List<ProjectArticle> findProjectArticleByPage(int page, int row) ;
	public int getProjectArticleCount(Integer channelId);
	public List<ProjectArticle> findProjectChannellArticleLimit(Integer channelId,Integer number);
	public List<ProjectArticle> findProjectChannelArticleByPage(int channelId,int page, int row);
	public ChannelVO findChannel(int channelId) ;
	public List<ProjectArticle> findProjectShenPiArticleLimit(String channelChildrens);
	public int getProjectShenPiArticleCount(String channelChildrens) ;
	public List<ProjectBasic> findProjectBasicAll(Integer number);
	public int getProjectBasicCount() ;
	public List<ProjectBasic> findProjectShenPiBasicLimit(String shape,Integer number); 
	public List<ProjectArticleVO> findProjectArticleByCode(String code);
	public ProjectBasic findProjectBasicByCode(String code);
	
	public List<EnterpriseArticle> findEnterpriseArticleLimit(Integer number);
	public List<EnterpriseArticle> findEnterpriseArticleByPage(int page, int row);
	public int getEnterpriseArticleCount(Integer channelId);
	public EnterpriseArticle getEnterpriseArticle(Long id);	
	public List<EnterpriseArticle> findEnterpriseChannelArticleByPage(int channelId,int page, int row);
	public List<EnterpriseArticle> findEnterpriseChannelArticleLimit(Integer channelId,Integer number);
	public List<EnterpriseBasic> findEnterpriseBasicAll(Integer number);
	public int getEnterpriseBasicCount();
	public List<EnterpriseArticleVO> findEnterpriseArticleByCode(String code);
	public EnterpriseBasic findEnterpriseBasicByYyzzzch(String yyzzzch);
	
	public List<EmployeArticle> findEmployeArticleLimit(Integer number);
	public List<EmployeArticle> findEmployeArticleByPage(int page, int row) ;
	public int getEmployeArticleCount(Integer channelId);
	public EmployeArticle getEmployeArticle(Long id);
	public List<EmployeArticle> findEmployeChannelArticleLimit(Integer channelId,Integer number);
	public List<EmployeArticle> findEmployeChannelArticleByPage(int channelId,int page, int row);
	public List<EmployeBasic> findEmployeBasicAll(Integer number);
	public int getEmployeBasicCount();	
	public List<EmployeArticleVO> findEmployeArticleByCode(String code);
	public EmployeBasic findEmployeBasicByCardCode(String code);
	
	
	
	public List<ArticleMainVO> findArticleMainByChannelId(int channelId);
	public List<Organ> findPublishSelectorAll();
	public List<SectorArticleVO> getSectorArticleList(Long organId,int pageNumber, int row);
	public int getSectorArticleListCount(Long organId);
	public Organ getPublishingSectorByCode(Long organId);
	public String findChannelChildrensByChannelId(int channelId);
	 public List<ArticleMain> findArticleMainListByChannel(Integer channelId);
	 public ArticleMain getArticleMain(Long pk);
}
