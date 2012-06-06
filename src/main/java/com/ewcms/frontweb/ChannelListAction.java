package com.ewcms.frontweb;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ewcms.content.particular.FrontParticularFacable;
import com.ewcms.content.particular.model.EmployeArticle;
import com.ewcms.content.particular.model.EnterpriseArticle;
import com.ewcms.content.particular.model.ProjectArticle;

public class ChannelListAction {
	 private final static int DEFAULT_ROW = 20;
	 
	    protected int pageNumber;
	    protected int row = DEFAULT_ROW;
	    protected Page page;
	    private int channelId;
	    private ChannelVO channelVO;
	    
		private List<ProjectArticle> projectChannelArticleList;
		private List<EmployeArticle> employeChannelArticleList;
		private List<EnterpriseArticle> enterpriseChannelArticleList;
		@Autowired
		private FrontParticularFacable particularFac;
		
		public int getPageNumber() {
			return pageNumber;
		}
		public void setPageNumber(int pageNumber) {
			this.pageNumber = pageNumber;
		}
		public Page getPage() {
			return page;
		}
		public void setPage(Page page) {
			this.page = page;
		}
		public int getChannelId() {
			return channelId;
		}
		public void setChannelId(int channelId) {
			this.channelId = channelId;
		}
		public ChannelVO getChannelVO() {
			return channelVO;
		}
		public void setChannelVO(ChannelVO channelVO) {
			this.channelVO = channelVO;
		}
		public List<ProjectArticle> getProjectChannelArticleList() {
			return projectChannelArticleList;
		}
		public void setProjectChannelArticleList(
				List<ProjectArticle> projectChannelArticleList) {
			this.projectChannelArticleList = projectChannelArticleList;
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

		public String projectChannelArticleListByPage(){
			projectChannelArticleList = particularFac.findProjectChannelArticleByPage(channelId,pageNumber, row);
			page =  new Page.Builder(particularFac.getProjectArticleCount(channelId), pageNumber + 1).setPageSize(row).build();
			this.setChannelVO(particularFac.findChannel(channelId));
			return "success";		
		}

		public String employeChannelArticleListByPage(){
			employeChannelArticleList = particularFac.findEmployeChannelArticleByPage(channelId,pageNumber, row);
			page =  new Page.Builder(particularFac.getEmployeArticleCount(channelId), pageNumber + 1).setPageSize(row).build();
			this.setChannelVO(particularFac.findChannel(channelId));
			return "success";
		}	
		public String enterpriseChannelArticleListByPage(){
			enterpriseChannelArticleList = particularFac.findEnterpriseChannelArticleByPage(channelId,pageNumber, row);
			page =  new Page.Builder(particularFac.getEnterpriseArticleCount(channelId), pageNumber + 1).setPageSize(row).build();
			this.setChannelVO(particularFac.findChannel(channelId));
			return "success";
		}		
	    
}
