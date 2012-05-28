package com.ewcms.content.particular.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ewcms.content.particular.dao.FrontEmployeArticleDAO;
import com.ewcms.content.particular.model.EmployeArticle;

@Service
public class FrontEmployeArticleService implements FrontEmployeArticleServiceable {
	@Autowired
	private FrontEmployeArticleDAO employeArticleDAO;

	@Override
	public List<EmployeArticle> findEmployeArticleLimit(Integer number) {
		return employeArticleDAO.findEmployeArticleLimit(number);
	}

	@Override
	public List<EmployeArticle> findEmployeArticleByPage(int page, int row) {
		return employeArticleDAO.findEmployeArticleByPage(page, row);
	}



	@Override
	public int getEmployeArticleCount(Integer channelId) {
		return employeArticleDAO.getEmployeArticleCount(channelId);
	}

	@Override
	public EmployeArticle getEmployeArticle(Long id) {
		return employeArticleDAO.get(id);
	}

	@Override
	public List<EmployeArticle> findEmployeChannelArticleLimit(
			Integer channelId, Integer number) {
		return employeArticleDAO.findEmployeChannelArticleLimit(channelId, number);
	}

	@Override
	public List<EmployeArticle> findEmployeChannelArticleByPage(int channelId,
			int page, int row) {
		return employeArticleDAO.findEmployeChannelArticleByPage(channelId, page, row);
	}
}
