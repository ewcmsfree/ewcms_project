package com.ewcms.frontweb;

import org.springframework.beans.factory.annotation.Autowired;

import com.ewcms.content.particular.FrontParticularFacable;
import com.ewcms.content.particular.model.EmployeArticle;
import com.ewcms.content.particular.model.EnterpriseArticle;
import com.ewcms.content.particular.model.ProjectArticle;

public class DetailAction {
	private Long articleId;
	private ProjectArticle paVO;
	private EmployeArticle eaVO;
	private EnterpriseArticle epaVO;
	private ChannelVO channelVO;
	@Autowired
	private FrontParticularFacable particularFac;


	public ChannelVO getChannelVO() {
		return channelVO;
	}

	public void setChannelVO(ChannelVO channelVO) {
		this.channelVO = channelVO;
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

	public String projectDetail(){
		setPaVO(particularFac.findProjectArticleById(articleId));
		this.setChannelVO(particularFac.findChannel(paVO.getChannelId()));
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
