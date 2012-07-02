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
import com.ewcms.content.particular.dao.FrontEmployeArticleDAO;
import com.ewcms.content.particular.dao.FrontEmployeBasicDAO;
import com.ewcms.content.particular.dao.FrontProjectArticleDAO;
import com.ewcms.content.particular.model.EmployeArticle;
import com.ewcms.content.particular.model.EmployeBasic;
import com.ewcms.content.particular.model.EnterpriseArticle;
import com.ewcms.frontweb.EmployeArticleVO;
import com.ewcms.frontweb.EnterpriseArticleVO;

@Service
public class FrontEmployeArticleService implements FrontEmployeArticleServiceable {
	@Autowired
	private FrontEmployeArticleDAO employeArticleDAO;
	@Autowired
	private FrontEmployeBasicDAO employeBasicDAO;
	@Autowired
	private FrontProjectArticleDAO projectArticleDAO;
	@Override
	public List<EmployeArticle> findEmployeArticleLimit(Integer number) {
		return employeArticleDAO.findEmployeArticleLimit(number);
	}

	@Override
	public List<EmployeArticle> findEmployeArticleByPage(int page, int row) {
		return employeArticleDAO.findEmployeArticleByPage(page, row);
	}



	@Override
	public int getEmployeArticleCount(Integer channelId) {
		return employeArticleDAO.getEmployeArticleCount(channelId);
	}

	@Override
	public EmployeArticle getEmployeArticle(Long id) {
		return employeArticleDAO.get(id);
	}

	@Override
	public List<EmployeArticle> findEmployeChannelArticleLimit(
			Integer channelId, Integer number) {
		return employeArticleDAO.findEmployeChannelArticleLimit(channelId, number);
	}

	@Override
	public List<EmployeArticle> findEmployeChannelArticleByPage(int channelId,
			int page, int row) {
		return employeArticleDAO.findEmployeChannelArticleByPage(channelId, page, row);
	}

	@Override
	public List<EmployeArticle> findEmployeArticleBySector(Long organId) {
		return employeArticleDAO.findEmployeArticleBySector(organId);
	}

	@Override
	public List<EmployeBasic> findEmployeBasicAll(Integer number) {
		return employeBasicDAO.findEmployeBasicAll(number);
	}

	@Override
	public int getEmployeBasicCount() {
		return employeBasicDAO.getEmployeBasicCount();
	}

	@Override
	public List<EmployeArticleVO> findEmployeArticleByCode(String code) {
		List<EmployeArticle> paList=employeArticleDAO.findEmployeArticleByCode(code);
		List<EmployeArticleVO> paVOList = new ArrayList<EmployeArticleVO>();
		for(EmployeArticle vo:paList){
			EmployeArticleVO paVO = new EmployeArticleVO();
			paVO.setEmployeArticle(vo);
			paVO.setChannelVO(projectArticleDAO.findChannel(vo.getChannelId()));
			paVOList.add(paVO);
		}
		return paVOList;
	}

	@Override
	public EmployeBasic findEmployeBasicByCardCode(String code) {
		// TODO Auto-generated method stub
		return employeBasicDAO.findEmployeBasicByCardCode(code);
	}

	@Override
	public List<EmployeBasic> findEmployeBasicBySector(Long organId) {
		// TODO Auto-generated method stub
		return employeBasicDAO.findEmployeBasicBySector(organId);
	}
}
