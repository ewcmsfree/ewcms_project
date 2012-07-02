/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
package com.ewcms.frontweb;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ewcms.content.particular.FrontParticularFacable;
import com.ewcms.content.particular.model.Organ;
import com.ewcms.content.particular.model.ProjectArticle;

public class SectorAction {
	private List<SectorArticleVO> sectorArticleList;
	private Long organId;
	@Autowired
	private FrontParticularFacable particularFac;
	private Organ organVO;
	private final static int DEFAULT_ROW = 20;

	protected int pageNumber;
	protected int row = DEFAULT_ROW;
	protected Page page;

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



	public Organ getOrganVO() {
		return organVO;
	}

	public void setOrganVO(Organ organVO) {
		this.organVO = organVO;
	}


	public Long getOrganId() {
		return organId;
	}

	public void setOrganId(Long organId) {
		this.organId = organId;
	}

	public List<SectorArticleVO> getSectorArticleList() {
		return sectorArticleList;
	}

	public void setSectorArticleList(List<SectorArticleVO> sectorArticleList) {
		this.sectorArticleList = sectorArticleList;
	}

	public String sectorArticleList() {
		sectorArticleList = particularFac.getSectorArticleList(organId,pageNumber, row);
		setOrganVO(particularFac.getPublishingSectorByCode(organId));
		page =  new Page.Builder(sectorArticleList.size(), pageNumber + 1).setPageSize(row).build();
		return "success";
	}
}
