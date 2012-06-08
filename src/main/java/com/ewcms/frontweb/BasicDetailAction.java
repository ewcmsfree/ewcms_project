/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
package com.ewcms.frontweb;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ewcms.content.particular.FrontParticularFacable;
import com.ewcms.content.particular.model.EmployeBasic;
import com.ewcms.content.particular.model.EnterpriseBasic;
import com.ewcms.content.particular.model.ProjectBasic;

public class BasicDetailAction {
	private ProjectBasic pbVO;
	private List<ProjectArticleVO> projectArticleList;
	private String codeId;
	private EmployeBasic ebVO;
	private List<EmployeArticleVO> employeArticleList;	
	
	private EnterpriseBasic epbVO;
	private List<EnterpriseArticleVO> enterpriseArticleList;	
	
	@Autowired
	private FrontParticularFacable particularFac;
	
	
	public EnterpriseBasic getEpbVO() {
		return epbVO;
	}
	public void setEpbVO(EnterpriseBasic epbVO) {
		this.epbVO = epbVO;
	}
	public List<EnterpriseArticleVO> getEnterpriseArticleList() {
		return enterpriseArticleList;
	}
	public void setEnterpriseArticleList(
			List<EnterpriseArticleVO> enterpriseArticleList) {
		this.enterpriseArticleList = enterpriseArticleList;
	}
	public ProjectBasic getPbVO() {
		return pbVO;
	}
	public void setPbVO(ProjectBasic pbVO) {
		this.pbVO = pbVO;
	}
	public List<ProjectArticleVO> getProjectArticleList() {
		return projectArticleList;
	}
	public void setProjectArticleList(List<ProjectArticleVO> projectArticleList) {
		this.projectArticleList = projectArticleList;
	}
	public String getCodeId() {
		return codeId;
	}
	public void setCodeId(String codeId) {
		this.codeId = codeId;
	}
	
	
	public EmployeBasic getEbVO() {
		return ebVO;
	}
	public void setEbVO(EmployeBasic ebVO) {
		this.ebVO = ebVO;
	}
	public List<EmployeArticleVO> getEmployeArticleList() {
		return employeArticleList;
	}
	public void setEmployeArticleList(List<EmployeArticleVO> employeArticleList) {
		this.employeArticleList = employeArticleList;
	}
	public String projectBasicDetail(){
		setPbVO(particularFac.findProjectBasicByCode(codeId));
		this.setProjectArticleList(particularFac.findProjectArticleByCode(codeId));
		return "success";
	}
	
	public String employeBasicDetail(){
		setEbVO(particularFac.findEmployeBasicByCardCode(codeId));
		this.setEmployeArticleList(particularFac.findEmployeArticleByCode(codeId));
		return "success";
	}	
	
	public String enterpriseBasicDetail(){
		setEpbVO(particularFac.findEnterpriseBasicByYyzzzch(codeId));
		this.setEnterpriseArticleList(particularFac.findEnterpriseArticleByCode(codeId));
		return "success";
	}	
}
