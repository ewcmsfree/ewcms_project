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
import com.ewcms.content.particular.dao.FrontEnterpriseArticleDAO;
import com.ewcms.content.particular.dao.FrontEnterpriseBasicDAO;
import com.ewcms.content.particular.dao.FrontProjectArticleDAO;
import com.ewcms.content.particular.model.EmployeArticle;
import com.ewcms.content.particular.model.EnterpriseArticle;
import com.ewcms.content.particular.model.EnterpriseBasic;
import com.ewcms.content.particular.model.ProjectArticle;
import com.ewcms.frontweb.EnterpriseArticleVO;
import com.ewcms.frontweb.ProjectArticleVO;

@Service
public class FrontEnterpriseArticleService implements FrontEnterpriseArticleServiceable {
	@Autowired
	private FrontEnterpriseArticleDAO enterpriseArticleDAO;
	@Autowired
	private FrontEnterpriseBasicDAO enterpriseBasicDAO;
	@Autowired
	private FrontProjectArticleDAO projectArticleDAO;
	@Override
	public List<EnterpriseArticle> findEnterpriseArticleLimit(Integer number) {
		return enterpriseArticleDAO.findEnterpriseArticleLimit(number);
	}

	@Override
	public List<EnterpriseArticle> findEnterpriseArticleByPage(int page, int row) {
		return enterpriseArticleDAO.findEnterpriseArticleByPage(page, row);
	}

	@Override
	public int getEnterpriseArticleCount(Integer channelId) {
		return enterpriseArticleDAO.getEnterpriseArticleCount(channelId);
	}

	@Override
	public EnterpriseArticle getEnterpriseArticle(Long id) {
		return enterpriseArticleDAO.get(id);
	}

	@Override
	public List<EnterpriseArticle> findEnterpriseChannelArticleByPage(
			int channelId, int page, int row) {
		return enterpriseArticleDAO.findEnterpriseChannelArticleByPage(channelId, page, row);
	}

	@Override
	public List<EnterpriseArticle> findEnterpriseChannelArticleLimit(
			Integer channelId, Integer number) {
		return enterpriseArticleDAO.findEnterpriseChannelArticleLimit(channelId, number);
	}

	@Override
	public List<EnterpriseBasic> findEnterpriseBasicAll(Integer number) {
		return enterpriseBasicDAO.findEnterpriseBasicAll(number);
	}

	@Override
	public int getEnterpriseBasicCount() {
		return enterpriseBasicDAO.getEnterpriseBasicCount();
	}

	@Override
	public List<EnterpriseArticle> findEnterpriseArticleBySector(
			Long organId) {
		return enterpriseArticleDAO.findEnterpriseArticleBySector(organId);
	}

	@Override
	public List<EnterpriseArticleVO> findEnterpriseArticleByCode(String code) {
		List<EnterpriseArticle> paList=enterpriseArticleDAO.findEnterpriseArticleByCode(code);
		List<EnterpriseArticleVO> paVOList = new ArrayList<EnterpriseArticleVO>();
		for(EnterpriseArticle vo:paList){
			EnterpriseArticleVO paVO = new EnterpriseArticleVO();
			paVO.setEnterpriseArticle(vo);
			paVO.setChannelVO(projectArticleDAO.findChannel(vo.getChannelId()));
			paVOList.add(paVO);
		}
		return paVOList;
	}

	@Override
	public EnterpriseBasic findEnterpriseBasicByYyzzzch(String yyzzzch) {
		return enterpriseBasicDAO.findEnterpriseBasicByYyzzzch(yyzzzch);
	}
}
