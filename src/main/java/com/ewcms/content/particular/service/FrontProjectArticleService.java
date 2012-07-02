/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
package com.ewcms.content.particular.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ewcms.content.particular.dao.FrontProjectArticleDAO;
import com.ewcms.content.particular.dao.FrontProjectBasicDAO;
import com.ewcms.content.particular.model.ProjectArticle;
import com.ewcms.content.particular.model.ProjectBasic;
import com.ewcms.frontweb.ArticleMainVO;
import com.ewcms.frontweb.ChannelVO;
import com.ewcms.frontweb.ProjectArticleVO;

@Service
public class FrontProjectArticleService implements FrontProjectArticleServiceable {
	@Autowired
	private FrontProjectArticleDAO projectArticleDAO;
	@Autowired
	private FrontProjectBasicDAO projectBasicAO;
	@Override
	public List<ProjectArticle> findProjectArticleLimit(Integer number) {
		return projectArticleDAO.findProjectArticleLimit(number);
	}

	@Override
	public List<ProjectArticle> findProjectArticleByPage(int page, int row) {
		return projectArticleDAO.findProjectArticleByPage(page, row);
	}

	@Override
	public int getProjectArticleCount(Integer channelId) {
		return projectArticleDAO.getProjectArticleCount(channelId);
	}

	@Override
	public ProjectArticle findProjectArticleById(Long id) {
		return projectArticleDAO.get(id);
	}

	@Override
	public List<ProjectArticle> findProjectChannellArticleLimit(
			Integer channelId, Integer number) {
		return projectArticleDAO.findProjectChannellArticleLimit(channelId, number);
	}

	@Override
	public List<ProjectArticle> findProjectChannelArticleByPage(int channelId,
			int page, int row) {
		return projectArticleDAO.findProjectChannelArticleByPage(channelId, page, row);
	}

	@Override
	public ChannelVO findChannel(int channelId) {
		return projectArticleDAO.findChannel(channelId);
	}

	@Override
	public List<ProjectArticle> findProjectShenPiArticleLimit(String channelChildrens) {
		return projectArticleDAO.findProjectShenPiArticleLimit(channelChildrens);
	}

	@Override
	public int getProjectShenPiArticleCount(String channelChildrens)  {
		return projectArticleDAO.getProjectShenPiArticleCount(channelChildrens);
	}

	@Override
	public List<ProjectArticle> findProjectArticleBySector(Long organId) {
		return projectArticleDAO.findProjectArticleBySector(organId);
	}

	@Override
	public List<ProjectBasic> findProjectBasicAll(Integer number) {
		return projectBasicAO.findProjectBasicAll(number);
	}

	@Override
	public int getProjectBasicCount() {
		return projectBasicAO.getProjectBasicCount();
	}

	@Override
	public List<ProjectBasic> findProjectShenPiBasicLimit(String shape,
			Integer number) {
		return projectBasicAO.findProjectShenPiBasicLimit(shape, number);
	}

	@Override
	public List<ProjectArticleVO> findProjectArticleByCode(String code) {
		List<ProjectArticle> paList=projectArticleDAO.findProjectArticleByCode(code);
		List<ProjectArticleVO> paVOList = new ArrayList<ProjectArticleVO>();
		for(ProjectArticle vo:paList){
			ProjectArticleVO paVO = new ProjectArticleVO();
			paVO.setProjectArticle(vo);
			paVO.setChannelVO(findChannel(vo.getChannelId()));
			paVOList.add(paVO);
		}
		return paVOList;
	}

	@Override
	public ProjectBasic findProjectBasicByCode(String code) {
		return projectBasicAO.findProjectBasicByCode(code);
	}

	@Override
	public List<ProjectBasic> findProjectBasicBySector(Long organId) {
		// TODO Auto-generated method stub
		return projectBasicAO.findProjectBasicBySector(organId);
	}
	
	
}
