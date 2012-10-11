/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
package com.ewcms.content.particular.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ewcms.content.particular.dao.FontArticleMainDAO;
import com.ewcms.content.particular.dao.FontOrganDAO;
import com.ewcms.content.particular.model.ArticleMain;
import com.ewcms.content.particular.model.Organ;
import com.ewcms.frontweb.ArticleMainVO;
import com.ewcms.frontweb.ChannelVO;
@Service
public class FontArticleMainService implements FontArticleMainServiceable {
	@Autowired
	private FontArticleMainDAO articleMainDAO;
	@Autowired
	private FontOrganDAO organDAO;
	
	@Override
	public List<ArticleMainVO> findArticleMainByChannelId(int channelId) {
		return articleMainDAO.findArticleMainByChannelId(channelId);
	}

	@Override
	public List<Organ> findPublishSelectorAll() {
		return organDAO.findPublishSelectorAll();
	}

	@Override
	public Organ getPublishingSectorByCode(Long organId) {
		return organDAO.get(Integer.valueOf(organId.toString()));
	}

	@Override
	public String findChannelChildrensByChannelId(int channelId) {
		List<ChannelVO> channelList = articleMainDAO.findChannelChildrensByChannelId(channelId);
		String childrens="";
		for(ChannelVO vo:channelList){
			childrens += vo.getId()+",";
		}
		return childrens.substring(0, childrens.length()-1);
	}

	@Override
	public List<ArticleMain> findArticleMainListByChannel(Integer channelId) {
		return articleMainDAO.findArticleMainListByChannel(channelId);
	}

	@Override
	public ArticleMain getArticleMain(Long pk) {
		return articleMainDAO.get(pk);
	}

}
