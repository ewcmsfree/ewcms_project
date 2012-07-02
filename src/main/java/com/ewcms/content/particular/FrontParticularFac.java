/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
package com.ewcms.content.particular;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ewcms.content.particular.model.EmployeArticle;
import com.ewcms.content.particular.model.EmployeBasic;
import com.ewcms.content.particular.model.EnterpriseArticle;
import com.ewcms.content.particular.model.EnterpriseBasic;
import com.ewcms.content.particular.model.Organ;
import com.ewcms.content.particular.model.ProjectArticle;
import com.ewcms.content.particular.model.ProjectBasic;
import com.ewcms.content.particular.service.FontArticleMainServiceable;
import com.ewcms.content.particular.service.FrontEmployeArticleServiceable;
import com.ewcms.content.particular.service.FrontEnterpriseArticleServiceable;
import com.ewcms.content.particular.service.FrontProjectArticleServiceable;
import com.ewcms.frontweb.ArticleMainVO;
import com.ewcms.frontweb.ChannelVO;
import com.ewcms.frontweb.EmployeArticleVO;
import com.ewcms.frontweb.EnterpriseArticleVO;
import com.ewcms.frontweb.ProjectArticleVO;
import com.ewcms.frontweb.SectorArticleVO;


@Service
public class FrontParticularFac implements FrontParticularFacable {
	@Autowired
	private FrontProjectArticleServiceable projectArticleService;
	@Autowired
	private FrontEnterpriseArticleServiceable enterpriseArticleService;
	@Autowired
	private FrontEmployeArticleServiceable employeArticleService;
	@Autowired
	private FontArticleMainServiceable articleMainService;


	@Override
	public List<ProjectArticle> findProjectArticleLimit(Integer number) {
		return projectArticleService.findProjectArticleLimit(number);
	}

	@Override
	public List<ProjectArticle> findProjectArticleByPage(int page, int row) {
		return projectArticleService.findProjectArticleByPage(page, row);
	}

	@Override
	public int getProjectArticleCount(Integer channelId) {
		return projectArticleService.getProjectArticleCount(channelId);
	}

	@Override
	public ProjectArticle findProjectArticleById(Long id) {
		return projectArticleService.findProjectArticleById(id);
	}

	@Override
	public List<ProjectArticle> findProjectChannellArticleLimit(
			Integer channelId, Integer number) {
		return projectArticleService.findProjectChannellArticleLimit(channelId, number);
	}

	@Override
	public List<ProjectArticle> findProjectChannelArticleByPage(int channelId,
			int page, int row) {
		return projectArticleService.findProjectChannelArticleByPage(channelId, page, row);
	}

	@Override
	public ChannelVO findChannel(int channelId) {
		return projectArticleService.findChannel(channelId);
	}

	@Override
	public int getProjectShenPiArticleCount(String channelChildrens)  {
		return projectArticleService.getProjectShenPiArticleCount(channelChildrens);
	}

	@Override
	public List<ProjectArticle> findProjectShenPiArticleLimit(String channelChildrens) {
		return projectArticleService.findProjectShenPiArticleLimit(channelChildrens);
	}

	@Override
	public List<ProjectBasic> findProjectBasicAll(Integer number) {
		return projectArticleService.findProjectBasicAll(number);
	}

	@Override
	public int getProjectBasicCount() {
		return projectArticleService.getProjectBasicCount();
	}

	@Override
	public List<ProjectBasic> findProjectShenPiBasicLimit(String shape,
			Integer number) {
		return projectArticleService.findProjectShenPiBasicLimit(shape, number);
	}

	@Override
	public List<ProjectArticleVO> findProjectArticleByCode(String code) {
		return projectArticleService.findProjectArticleByCode(code);
	}

	@Override
	public ProjectBasic findProjectBasicByCode(String code) {
		return projectArticleService.findProjectBasicByCode(code);
	}

	@Override
	public List<EnterpriseArticle> findEnterpriseArticleLimit(Integer number) {
		return enterpriseArticleService.findEnterpriseArticleLimit(number);
	}

	@Override
	public List<EnterpriseArticle> findEnterpriseArticleByPage(int page, int row) {
		return enterpriseArticleService.findEnterpriseArticleByPage(page, row);
	}

	@Override
	public int getEnterpriseArticleCount(Integer channelId) {
		return enterpriseArticleService.getEnterpriseArticleCount(channelId);
	}

	@Override
	public EnterpriseArticle getEnterpriseArticle(Long id) {
		return enterpriseArticleService.getEnterpriseArticle(id);
	}

	@Override
	public List<EnterpriseArticle> findEnterpriseChannelArticleByPage(
			int channelId, int page, int row) {
		return enterpriseArticleService.findEnterpriseChannelArticleByPage(channelId, page, row);
	}

	@Override
	public List<EnterpriseArticle> findEnterpriseChannelArticleLimit(
			Integer channelId, Integer number) {
		return enterpriseArticleService.findEnterpriseChannelArticleLimit(channelId, number);
	}

	@Override
	public List<EnterpriseBasic> findEnterpriseBasicAll(Integer number) {
		return enterpriseArticleService.findEnterpriseBasicAll(number);
	}

	@Override
	public int getEnterpriseBasicCount() {
		return enterpriseArticleService.getEnterpriseBasicCount();
	}

	@Override
	public List<EnterpriseArticleVO> findEnterpriseArticleByCode(String code) {
		return enterpriseArticleService.findEnterpriseArticleByCode(code);
	}

	@Override
	public List<EmployeArticleVO> findEmployeArticleByCode(String code) {
		return employeArticleService.findEmployeArticleByCode(code);
	}

	@Override
	public List<EmployeArticle> findEmployeArticleLimit(Integer number) {
		return employeArticleService.findEmployeArticleLimit(number);
	}

	@Override
	public List<EmployeArticle> findEmployeArticleByPage(int page, int row) {
		return employeArticleService.findEmployeArticleByPage(page, row);
	}

	@Override
	public int getEmployeArticleCount(Integer channelId) {
		return employeArticleService.getEmployeArticleCount(channelId);
	}

	@Override
	public EmployeArticle getEmployeArticle(Long id) {
		return employeArticleService.getEmployeArticle(id);
	}

	@Override
	public List<EmployeArticle> findEmployeChannelArticleLimit(
			Integer channelId, Integer number) {
		return employeArticleService.findEmployeChannelArticleLimit(channelId, number);
	}

	@Override
	public List<EmployeArticle> findEmployeChannelArticleByPage(int channelId,
			int page, int row) {
		return employeArticleService.findEmployeChannelArticleByPage(channelId, page, row);
	}

	@Override
	public List<EmployeBasic> findEmployeBasicAll(Integer number) {
		return employeArticleService.findEmployeBasicAll(number);
	}

	@Override
	public int getEmployeBasicCount() {
		return employeArticleService.getEmployeBasicCount();
	}

	@Override
	public List<ArticleMainVO> findArticleMainByChannelId(int channelId) {
		return articleMainService.findArticleMainByChannelId(channelId);
	}

	@Override
	public List<Organ> findPublishSelectorAll() {
		return articleMainService.findPublishSelectorAll();
	}

	@Override
	public List<SectorArticleVO> getSectorArticleList(Long organId,int pageNumber,int row){
		List<SectorArticleVO> saList = new ArrayList<SectorArticleVO>();
		List<ProjectArticle> paList = projectArticleService.findProjectArticleBySector(organId);
		List<EnterpriseArticle> eaList = enterpriseArticleService.findEnterpriseArticleBySector(organId);
		List<EmployeArticle> employeaList = employeArticleService.findEmployeArticleBySector(organId);
		
		List<ProjectBasic> pbList = projectArticleService.findProjectBasicBySector(organId);
		List<EnterpriseBasic> ebList = enterpriseArticleService.findEnterpriseBasicBySector(organId);
		List<EmployeBasic> employebList = employeArticleService.findEmployeBasicBySector(organId);
		
		for(ProjectArticle vo:paList){
			SectorArticleVO saVO = new SectorArticleVO();
			saVO.setArticleId(vo.getId());
			saVO.setCode(vo.getProjectBasic().getCode());
			saVO.setName(vo.getProjectBasic().getName());
			saVO.setPublicTime(vo.getPublished());
			saVO.setType("project");
			saList.add(saVO);
		}
		
		for(EnterpriseArticle vo:eaList){
			SectorArticleVO saVO = new SectorArticleVO();
			saVO.setArticleId(vo.getId());
			saVO.setCode(vo.getEnterpriseBasic().getYyzzzch());
			saVO.setName(vo.getEnterpriseBasic().getName());
			saVO.setPublicTime(vo.getPublished());
			saVO.setType("enterprise");
			saList.add(saVO);
		}	
		
		
		for(EmployeArticle vo:employeaList){
			SectorArticleVO saVO = new SectorArticleVO();
			saVO.setArticleId(vo.getId());
			saVO.setCode(vo.getEmployeBasic().getCardCode());
			saVO.setName(vo.getEmployeBasic().getName());
			saVO.setPublicTime(vo.getPublished());
			saVO.setType("employe");
			saList.add(saVO);
		}
		
		for(ProjectBasic vo:pbList){
			SectorArticleVO saVO = new SectorArticleVO();
			saVO.setArticleId(vo.getId());
			saVO.setCode(vo.getCode());
			saVO.setName(vo.getName());
			saVO.setPublicTime(vo.getPublished());
			saVO.setType("projectbasic");
			saList.add(saVO);
		}		
		for(EnterpriseBasic vo:ebList){
			SectorArticleVO saVO = new SectorArticleVO();
			saVO.setArticleId(vo.getId());
			saVO.setCode(vo.getYyzzzch());
			saVO.setName(vo.getName());
			saVO.setPublicTime(vo.getPublished());
			saVO.setType("enterprisebasic");
			saList.add(saVO);
		}	
		
		for(EmployeBasic vo:employebList){
			SectorArticleVO saVO = new SectorArticleVO();
			saVO.setArticleId(vo.getId());
			saVO.setCode(vo.getCardCode());
			saVO.setName(vo.getName());
			saVO.setPublicTime(vo.getPublished());
			saVO.setType("employebasic");
			saList.add(saVO);
		}
//		if(saList.size()>(pageNumber+1)*row){
//			return saList.subList(pageNumber*row, (pageNumber+1)*row);
//		}else{
//			return saList.subList(pageNumber*row, saList.size());
//		}
		return saList;
	}

	@Override
	public int getSectorArticleListCount(Long organId) {
		List<ProjectArticle> paList = projectArticleService.findProjectArticleBySector(organId);
		List<EnterpriseArticle> eaList = enterpriseArticleService.findEnterpriseArticleBySector(organId);
		List<EmployeArticle> employeaList = employeArticleService.findEmployeArticleBySector(organId);
		int count=0;
		if(paList!=null){
			count+=paList.size();
		}
		if(eaList!=null){
			count+=eaList.size();
		}	
		if(employeaList!=null){
			count+=employeaList.size();
		}		
		return count;
	}

	@Override
	public Organ getPublishingSectorByCode(Long organId) {
		return articleMainService.getPublishingSectorByCode(organId);
	}

	@Override
	public String findChannelChildrensByChannelId(int channelId) {
		return articleMainService.findChannelChildrensByChannelId(channelId);
	}

	@Override
	public EnterpriseBasic findEnterpriseBasicByYyzzzch(String yyzzzch) {
		return enterpriseArticleService.findEnterpriseBasicByYyzzzch(yyzzzch);
	}

	@Override
	public EmployeBasic findEmployeBasicByCardCode(String code) {
		// TODO Auto-generated method stub
		return employeArticleService.findEmployeBasicByCardCode(code);
	}
	
}
