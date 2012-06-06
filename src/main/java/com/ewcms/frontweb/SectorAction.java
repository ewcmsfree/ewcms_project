package com.ewcms.frontweb;

import java.util.List;

import com.ewcms.content.particular.model.ProjectArticle;
import com.ewcms.content.particular.model.PublishingSector;

public class SectorAction {
	private List<ProjectArticle> projectSelectorArticleList;
	private PublishingSector sectorVO;
	private String code;
	public List<ProjectArticle> getProjectSelectorArticleList() {
		return projectSelectorArticleList;
	}

	public void setProjectSelectorArticleList(
			List<ProjectArticle> projectSelectorArticleList) {
		this.projectSelectorArticleList = projectSelectorArticleList;
	}
	
	public String sectorArticleList(){
		
		return "success";
	}
}
