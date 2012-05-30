/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
package com.ewcms.content.particular.service;

import java.util.List;

import com.ewcms.content.particular.model.ProjectArticle;
import com.ewcms.content.particular.model.ProjectBasic;
import com.ewcms.frontweb.ChannelVO;

public interface FrontProjectArticleServiceable {
	public ProjectArticle findProjectArticleById(Long id);
	public List<ProjectArticle> findProjectArticleLimit(Integer number);
	public List<ProjectArticle> findProjectArticleByPage(int page, int row) ;
	public int getProjectArticleCount(Integer channelId) ;
	public List<ProjectArticle> findProjectChannellArticleLimit(Integer channelId,Integer number);
	public List<ProjectArticle> findProjectChannelArticleByPage(int channelId,int page, int row);
	public ChannelVO findChannel(int channelId) ;
	public List<ProjectArticle> findProjectShenPiArticleLimit(String shape,Integer number);
	public int getProjectShapeArticleCount(String shape);
	public List<ProjectBasic> findProjectBasicAll(Integer number);
	 public int getProjectBasicCount() ;
}
