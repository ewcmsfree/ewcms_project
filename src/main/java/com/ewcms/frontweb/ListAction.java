package com.ewcms.frontweb;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ewcms.content.particular.FrontParticularFacable;
import com.ewcms.content.particular.model.EmployeArticle;
import com.ewcms.content.particular.model.EnterpriseArticle;
import com.ewcms.content.particular.model.ProjectArticle;

public class ListAction {
	 private final static int DEFAULT_ROW = 20;
	 
	    protected int pageNumber;
	    protected int row = DEFAULT_ROW;
	    protected Page page;
	    private int channelId;
	    private ChannelVO channelVO;
	@Autowired
	private FrontParticularFacable particularFac;
	private List<ProjectArticle> projectArticleList;
	private List<EmployeArticle> employeArticleList;
	private List<EnterpriseArticle> enterpriseArticleList;
	private List<ProjectArticle> projectChannelArticleList;
	private List<EmployeArticle> employeChannelArticleList;
	private List<EnterpriseArticle> enterpriseChannelArticleList;

	
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
    
    
	public List<ProjectArticle> getProjectArticleList() {
		return projectArticleList;
	}

	public void setProjectArticleList(List<ProjectArticle> projectArticleList) {
		this.projectArticleList = projectArticleList;
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

	public List<EmployeArticle> getEmployeChannelArticleList() {
		return employeChannelArticleList;
	}

	public void setEmployeChannelArticleList(
			List<EmployeArticle> employeChannelArticleList) {
		this.employeChannelArticleList = employeChannelArticleList;
	}

	public List<EnterpriseArticle> getEnterpriseChannelArticleList() {
		return enterpriseChannelArticleList;
	}

	public void setEnterpriseChannelArticleList(
			List<EnterpriseArticle> enterpriseChannelArticleList) {
		this.enterpriseChannelArticleList = enterpriseChannelArticleList;
	}

	public int getChannelId() {
		return channelId;
	}

	public void setChannelId(int channelId) {
		this.channelId = channelId;
	}

	public List<ProjectArticle> getProjectChannelArticleList() {
		return projectChannelArticleList;
	}

	public void setProjectChannelArticleList(
			List<ProjectArticle> projectChannelArticleList) {
		this.projectChannelArticleList = projectChannelArticleList;
	}

	public String projectArticleListByPage(){
		projectArticleList = particularFac.findProjectArticleByPage(pageNumber, row);
		page =  new Page.Builder(particularFac.getProjectArticleCount(null), pageNumber + 1).setPageSize(row).build();
		return "success";
	}
	public String projectChannelArticleListByPage(){
		projectChannelArticleList = particularFac.findProjectChannelArticleByPage(channelId,pageNumber, row);
		page =  new Page.Builder(particularFac.getProjectArticleCount(channelId), pageNumber + 1).setPageSize(row).build();
		this.setChannelVO(particularFac.findChannel(channelId));
		return "success";		
	}
	public String employeArticleListByPage(){
		employeArticleList = particularFac.findEmployeArticleByPage(pageNumber, row);
		page =  new Page.Builder(particularFac.getEmployeArticleCount(null), pageNumber + 1).setPageSize(row).build();
		return "success";
	}
	public String employeChannelArticleListByPage(){
		employeChannelArticleList = particularFac.findEmployeChannelArticleByPage(channelId,pageNumber, row);
		page =  new Page.Builder(particularFac.getEmployeArticleCount(channelId), pageNumber + 1).setPageSize(row).build();
		this.setChannelVO(particularFac.findChannel(channelId));
		return "success";
	}	
	
	public String enterpriseArticleListByPage(){
		enterpriseArticleList = particularFac.findEnterpriseArticleByPage(pageNumber, row);
		page =  new Page.Builder(particularFac.getEnterpriseArticleCount(null), pageNumber + 1).setPageSize(row).build();
		return "success";
	}
	public String enterpriseChannelArticleListByPage(){
		enterpriseChannelArticleList = particularFac.findEnterpriseChannelArticleByPage(channelId,pageNumber, row);
		page =  new Page.Builder(particularFac.getEnterpriseArticleCount(channelId), pageNumber + 1).setPageSize(row).build();
		this.setChannelVO(particularFac.findChannel(channelId));
		return "success";
	}	
	
}
