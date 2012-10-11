package com.ewcms.frontweb;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ewcms.content.particular.FrontParticularFacable;
import com.ewcms.content.particular.model.ArticleMain;
import com.opensymphony.xwork2.ActionSupport;

public class PolicyAction extends ActionSupport {
	private final static int DEFAULT_ROW = 20;
    protected int pageNumber;
    protected int row = DEFAULT_ROW;
    protected Page page;
	@Autowired
	private FrontParticularFacable particularFac;	
	List<ArticleMain> policyList;  
	
	public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public Page getPage() {
        return this.page;
    }

	public List<ArticleMain> getPolicyList() {
		return policyList;
	}

	public void setPolicyList(List<ArticleMain> policyList) {
		this.policyList = policyList;
	}
	
	public String articleListByPage(){
		policyList = particularFac.findArticleMainListByChannel(Integer.valueOf(getText("policy.channelId")));
		page =  new Page.Builder(policyList.size(), pageNumber + 1).setPageSize(row).build();
		return "success";		
	}    
}
