package com.ewcms.content.particular.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ewcms.content.particular.dao.FrontProjectArticleDAO;
import com.ewcms.content.particular.model.ProjectArticle;
import com.ewcms.frontweb.ChannelVO;

@Service
public class FrontProjectArticleService implements FrontProjectArticleServiceable {

	@Autowired
	private FrontProjectArticleDAO projectArticleDAO;

	@Override
	public List<ProjectArticle> findProjectArticleLimit(Integer number) {
		return projectArticleDAO.findProjectArticleLimit(number);
	}

	@Override
	public List<ProjectArticle> findProjectArticleByPage(int page, int row) {
		return projectArticleDAO.findProjectArticleByPage(page, row);
	}

	@Override
	public int getProjectArticleCount(Integer channelId) {
		return projectArticleDAO.getProjectArticleCount(channelId);
	}

	@Override
	public ProjectArticle findProjectArticleById(Long id) {
		return projectArticleDAO.get(id);
	}

	@Override
	public List<ProjectArticle> findProjectChannellArticleLimit(
			Integer channelId, Integer number) {
		return projectArticleDAO.findProjectChannellArticleLimit(channelId, number);
	}

	@Override
	public List<ProjectArticle> findProjectChannelArticleByPage(int channelId,
			int page, int row) {
		return projectArticleDAO.findProjectChannelArticleByPage(channelId, page, row);
	}

	@Override
	public ChannelVO findChannel(int channelId) {
		return projectArticleDAO.findChannel(channelId);
	}
	
	
}
