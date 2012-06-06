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
import com.opensymphony.xwork2.ActionSupport;

public class ListAction extends ActionSupport{
	 private final static int DEFAULT_ROW = 20;
	 
	    protected int pageNumber;
	    protected int row = DEFAULT_ROW;
	    protected Page page;
	    private int channelId;
	    private ChannelVO channelVO;
	    
	@Autowired
	private FrontParticularFacable particularFac;
	private List<ProjectArticle> projectShenPiList;
	private List<EmployeArticle> employeArticleList;
	private List<EnterpriseArticle> enterpriseArticleList;

	
    public ChannelVO getChannelVO() {
		return channelVO;
	}

	public void setChannelVO(ChannelVO channelVO) {
		this.channelVO = channelVO;
	}

	public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public Page getPage() {
        return this.page;
    }
    
    

	public List<ProjectArticle> getProjectShenPiList() {
		return projectShenPiList;
	}

	public void setProjectShenPiList(List<ProjectArticle> projectShenPiList) {
		this.projectShenPiList = projectShenPiList;
	}

	public List<EmployeArticle> getEmployeArticleList() {
		return employeArticleList;
	}

	public void setEmployeArticleList(List<EmployeArticle> employeArticleList) {
		this.employeArticleList = employeArticleList;
	}

	public List<EnterpriseArticle> getEnterpriseArticleList() {
		return enterpriseArticleList;
	}

	public void setEnterpriseArticleList(
			List<EnterpriseArticle> enterpriseArticleList) {
		this.enterpriseArticleList = enterpriseArticleList;
	}


	public int getChannelId() {
		return channelId;
	}

	public void setChannelId(int channelId) {
		this.channelId = channelId;
	}


	public String projectArticleListByPage(){
//		projectBasicList = particularFac.findProjectArticleByPage(pageNumber, row);
//		page =  new Page.Builder(particularFac.getProjectArticleCount(null), pageNumber + 1).setPageSize(row).build();
		return "success";
	}
		
	public String enterpriseArticleListByPage(){
		enterpriseArticleList = particularFac.findEnterpriseArticleByPage(pageNumber, row);
		page =  new Page.Builder(particularFac.getEnterpriseArticleCount(null), pageNumber + 1).setPageSize(row).build();
		return "success";
	}

	
	public String employeArticleListByPage(){
		employeArticleList = particularFac.findEmployeArticleByPage(pageNumber, row);
		page =  new Page.Builder(particularFac.getEmployeArticleCount(null), pageNumber + 1).setPageSize(row).build();
		return "success";
	}	
	public String projectShenPiListByPage(){
		String childrens = particularFac.findChannelChildrensByChannelId(Integer.valueOf(getText("channel.parentId")));
		projectShenPiList = particularFac.findProjectShenPiArticleLimit(childrens);
		page =  new Page.Builder(particularFac.getProjectShenPiArticleCount(childrens), pageNumber + 1).setPageSize(row).build();
		return "success";		
	}	
}
