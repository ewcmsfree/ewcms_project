/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
package com.ewcms.frontweb;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ewcms.content.particular.FrontParticularFacable;
import com.ewcms.content.particular.model.EmployeArticle;
import com.ewcms.content.particular.model.EnterpriseArticle;
import com.ewcms.content.particular.model.ProjectArticle;
import com.ewcms.content.particular.model.ProjectBasic;

public class DetailAction {
	private Long articleId;
	private String codeId;
	private ProjectArticle paVO;
	private EmployeArticle eaVO;
	private EnterpriseArticle epaVO;
	private ChannelVO channelVO;
	private ProjectBasic pbVO;
	private List<ProjectArticleVO> projectArticleList;
	@Autowired
	private FrontParticularFacable particularFac;


	public ProjectBasic getPbVO() {
		return pbVO;
	}

	public void setPbVO(ProjectBasic pbVO) {
		this.pbVO = pbVO;
	}

	public ChannelVO getChannelVO() {
		return channelVO;
	}

	public void setChannelVO(ChannelVO channelVO) {
		this.channelVO = channelVO;
	}

	public String getCodeId() {
		return codeId;
	}

	public void setCodeId(String codeId) {
		this.codeId = codeId;
	}

	public Long getArticleId() {
		return articleId;
	}

	public void setArticleId(Long articleId) {
		this.articleId = articleId;
	}
	
	public ProjectArticle getPaVO() {
		return paVO;
	}
	public void setPaVO(ProjectArticle paVO) {
		this.paVO = paVO;
	}

	public EmployeArticle getEaVO() {
		return eaVO;
	}

	public void setEaVO(EmployeArticle eaVO) {
		this.eaVO = eaVO;
	}

	public EnterpriseArticle getEpaVO() {
		return epaVO;
	}

	public void setEpaVO(EnterpriseArticle epaVO) {
		this.epaVO = epaVO;
	}



	public List<ProjectArticleVO> getProjectArticleList() {
		return projectArticleList;
	}

	public void setProjectArticleList(List<ProjectArticleVO> projectArticleList) {
		this.projectArticleList = projectArticleList;
	}

	public String projectDetail(){
		setPbVO(particularFac.findProjectBasicByCode(codeId));
		this.setProjectArticleList(particularFac.findProjectArticleByCode(codeId));
		return "success";
	}
	
	public String employeDetail(){
		setEaVO(particularFac.getEmployeArticle(articleId));
		this.setChannelVO(particularFac.findChannel(eaVO.getChannelId()));
		return "success";
	}
	
	public String enterpriseDetail(){
		setEpaVO(particularFac.getEnterpriseArticle(articleId));
		this.setChannelVO(particularFac.findChannel(epaVO.getChannelId()));
		return "success";
	}	
}
