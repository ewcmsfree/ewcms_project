package com.ewcms.content.particular.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ewcms.content.particular.dao.FontArticleMainDAO;
import com.ewcms.content.particular.dao.FontPublishSelectorDAO;
import com.ewcms.content.particular.model.PublishingSector;
import com.ewcms.frontweb.ArticleMainVO;
@Service
public class FontArticleMainService implements FontArticleMainServiceable {
	@Autowired
	private FontArticleMainDAO articleMainDAO;
	@Autowired
	private FontPublishSelectorDAO publishSelectorDAO;
	
	@Override
	public List<ArticleMainVO> findArticleMainByChannelId(int channelId) {
		return articleMainDAO.findArticleMainByChannelId(channelId);
	}

	@Override
	public List<PublishingSector> findPublishSelectorAll() {
		return publishSelectorDAO.findPublishSelectorAll();
	}

}
