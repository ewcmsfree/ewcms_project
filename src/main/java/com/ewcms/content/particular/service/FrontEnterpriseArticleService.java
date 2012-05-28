package com.ewcms.content.particular.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ewcms.content.particular.dao.FrontEnterpriseArticleDAO;
import com.ewcms.content.particular.model.EmployeArticle;
import com.ewcms.content.particular.model.EnterpriseArticle;

@Service
public class FrontEnterpriseArticleService implements FrontEnterpriseArticleServiceable {
	@Autowired
	private FrontEnterpriseArticleDAO enterpriseArticleDAO;

	@Override
	public List<EnterpriseArticle> findEnterpriseArticleLimit(Integer number) {
		return enterpriseArticleDAO.findEnterpriseArticleLimit(number);
	}

	@Override
	public List<EnterpriseArticle> findEnterpriseArticleByPage(int page, int row) {
		return enterpriseArticleDAO.findEnterpriseArticleByPage(page, row);
	}

	@Override
	public int getEnterpriseArticleCount(Integer channelId) {
		return enterpriseArticleDAO.getEnterpriseArticleCount(channelId);
	}

	@Override
	public EnterpriseArticle getEnterpriseArticle(Long id) {
		return enterpriseArticleDAO.get(id);
	}

	@Override
	public List<EnterpriseArticle> findEnterpriseChannelArticleByPage(
			int channelId, int page, int row) {
		return enterpriseArticleDAO.findEnterpriseChannelArticleByPage(channelId, page, row);
	}

	@Override
	public List<EnterpriseArticle> findEnterpriseChannelArticleLimit(
			Integer channelId, Integer number) {
		return enterpriseArticleDAO.findEnterpriseChannelArticleLimit(channelId, number);
	}




}
