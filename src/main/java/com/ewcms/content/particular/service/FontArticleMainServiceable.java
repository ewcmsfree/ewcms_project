package com.ewcms.content.particular.service;

import java.util.List;

import com.ewcms.content.particular.model.PublishingSector;
import com.ewcms.frontweb.ArticleMainVO;

public interface FontArticleMainServiceable {
	 public List<ArticleMainVO> findArticleMainByChannelId(int channelId);
	 public List<PublishingSector> findPublishSelectorAll();
}
