/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
package com.ewcms.content.particular.service;

import java.util.List;

import com.ewcms.content.particular.model.ProjectArticle;
import com.ewcms.content.particular.model.ProjectBasic;
import com.ewcms.frontweb.ArticleMainVO;
import com.ewcms.frontweb.ChannelVO;
import com.ewcms.frontweb.ProjectArticleVO;

public interface FrontProjectArticleServiceable {
	public ProjectArticle findProjectArticleById(Long id);
	public List<ProjectArticle> findProjectArticleLimit(Integer number);
	public List<ProjectArticle> findProjectArticleByPage(int page, int row) ;
	public int getProjectArticleCount(Integer channelId) ;
	public List<ProjectArticle> findProjectChannellArticleLimit(Integer channelId,Integer number);
	public List<ProjectArticle> findProjectChannelArticleByPage(int channelId,int page, int row);
	public ChannelVO findChannel(int channelId) ;
	public List<ProjectArticle> findProjectShenPiArticleLimit(String channelChildrens);
	public int getProjectShenPiArticleCount(String channelChildrens) ;
	public List<ProjectBasic> findProjectBasicAll(Integer number);
	 public int getProjectBasicCount() ;
	 public List<ProjectBasic> findProjectShenPiBasicLimit(String shape,Integer number);
	 public List<ProjectArticleVO> findProjectArticleByCode(String code);
	 public ProjectBasic findProjectBasicByCode(final String code);
	 public List<ProjectArticle> findProjectArticleBySector(Long organId);
	 public List<ProjectBasic> findProjectBasicBySector(Long organId);
	 
}
