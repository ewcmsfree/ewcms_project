package com.ewcms.frontweb;

import java.io.Serializable;

import com.ewcms.content.particular.model.ProjectArticle;

public class ProjectArticleVO implements Serializable {
	private ProjectArticle projectArticle;
	private ChannelVO channelVO;
	public ProjectArticle getProjectArticle() {
		return projectArticle;
	}
	public void setProjectArticle(ProjectArticle projectArticle) {
		this.projectArticle = projectArticle;
	}
	public ChannelVO getChannelVO() {
		return channelVO;
	}
	public void setChannelVO(ChannelVO channelVO) {
		this.channelVO = channelVO;
	}
	
}
