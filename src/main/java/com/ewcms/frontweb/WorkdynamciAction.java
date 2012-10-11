package com.ewcms.frontweb;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ewcms.content.particular.FrontParticularFacable;
import com.ewcms.content.particular.model.ArticleMain;
import com.opensymphony.xwork2.ActionSupport;

public class WorkdynamciAction extends ActionSupport{
	private final static int DEFAULT_ROW = 20;
    protected int pageNumber;
    protected int row = DEFAULT_ROW;
    protected Page page;
    private Long articleId;
    private ArticleMain articlemainVo;
	@Autowired
	private FrontParticularFacable particularFac;	
	List<ArticleMain> workdynamicList;  
	
	public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public Page getPage() {
        return this.page;
    }
    
	public List<ArticleMain> getWorkdynamicList() {
		return workdynamicList;
	}

	public void setWorkdynamicList(List<ArticleMain> workdynamicList) {
		this.workdynamicList = workdynamicList;
	}

	public Long getArticleId() {
		return articleId;
	}

	public void setArticleId(Long articleId) {
		this.articleId = articleId;
	}

	public ArticleMain getArticlemainVo() {
		return articlemainVo;
	}

	public void setArticlemainVo(ArticleMain articlemainVo) {
		this.articlemainVo = articlemainVo;
	}

	public String articleListByPage(){
		workdynamicList = particularFac.findArticleMainListByChannel(Integer.valueOf(getText("workdynamic.channelId")));
		page =  new Page.Builder(workdynamicList.size(), pageNumber + 1).setPageSize(row).build();
		return "success";		
	}
	
	public String articleDetail(){
		articlemainVo = particularFac.getArticleMain(articleId);
		return "success";
	}
}
