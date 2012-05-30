package com.ewcms.content.particular.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ewcms.content.particular.dao.FrontEnterpriseArticleDAO;
import com.ewcms.content.particular.dao.FrontEnterpriseBasicDAO;
import com.ewcms.content.particular.model.EmployeArticle;
import com.ewcms.content.particular.model.EnterpriseArticle;
import com.ewcms.content.particular.model.EnterpriseBasic;

@Service
public class FrontEnterpriseArticleService implements FrontEnterpriseArticleServiceable {
	@Autowired
	private FrontEnterpriseArticleDAO enterpriseArticleDAO;
	@Autowired
	private FrontEnterpriseBasicDAO enterpriseBasicDAO;
	
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

	@Override
	public List<EnterpriseBasic> findEnterpriseBasicAll(Integer number) {
		return enterpriseBasicDAO.findEnterpriseBasicAll(number);
	}

	@Override
	public int getEnterpriseBasicCount() {
		return enterpriseBasicDAO.getEnterpriseBasicCount();
	}




}
