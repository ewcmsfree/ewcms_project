/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
package com.ewcms.content.particular.service;

import java.util.List;

import com.ewcms.content.particular.model.ArticleMain;
import com.ewcms.content.particular.model.Organ;
import com.ewcms.frontweb.ArticleMainVO;

public interface FontArticleMainServiceable {
	 public List<ArticleMainVO> findArticleMainByChannelId(int channelId);
	 public List<Organ> findPublishSelectorAll();
	 public Organ getPublishingSectorByCode(Long organId);
	 public String findChannelChildrensByChannelId(int channelId);
	 public List<ArticleMain> findArticleMainListByChannel(Integer channelId);
	 public ArticleMain getArticleMain(Long pk);
}
