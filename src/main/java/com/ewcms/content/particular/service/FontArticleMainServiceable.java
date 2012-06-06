package com.ewcms.content.particular.service;

import java.util.List;

import com.ewcms.content.particular.model.Organ;
import com.ewcms.frontweb.ArticleMainVO;

public interface FontArticleMainServiceable {
	 public List<ArticleMainVO> findArticleMainByChannelId(int channelId);
	 public List<Organ> findPublishSelectorAll();
	 public Organ getPublishingSectorByCode(Long organId);
	 public String findChannelChildrensByChannelId(int channelId);
}
