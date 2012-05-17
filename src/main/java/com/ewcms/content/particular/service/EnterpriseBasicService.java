package com.ewcms.content.particular.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import com.ewcms.content.particular.dao.EnterpriseBasicDAO;
import com.ewcms.content.particular.dao.PublishingSectorDAO;
import com.ewcms.content.particular.model.EnterpriseBasic;
import com.ewcms.content.particular.model.PublishingSector;

@Service
public class EnterpriseBasicService implements EnterpriseBasicServiceable {

	@Autowired
	private EnterpriseBasicDAO enterpriseBasicDAO;
	@Autowired
	private PublishingSectorDAO publishingSectorDAO;
	
	@Override
	public Long addEnterpriseBasic(EnterpriseBasic enterpriseBasic) {
		setPublishingSector(enterpriseBasic);
		enterpriseBasicDAO.persist(enterpriseBasic);
		return enterpriseBasic.getId();
	}

	@Override
	public Long updEnterpriseBasic(EnterpriseBasic enterpriseBasic) {
		setPublishingSector(enterpriseBasic);
		enterpriseBasicDAO.merge(enterpriseBasic);
		return enterpriseBasic.getId();
	}

	private void setPublishingSector(EnterpriseBasic enterpriseBasic){
		String publishingSector_code = enterpriseBasic.getPublishingSector().getCode();
		Assert.notNull(publishingSector_code);
		PublishingSector publishingSector = publishingSectorDAO.findPublishingSectorByCode(publishingSector_code);
		Assert.notNull(publishingSector);
		enterpriseBasic.setPublishingSector(publishingSector);
	}

	@Override
	public void delEnterpriseBasic(Long id) {
		enterpriseBasicDAO.removeByPK(id);
	}

	@Override
	public EnterpriseBasic findEnterpriseBasicById(Long id) {
		return enterpriseBasicDAO.get(id);
	}

	@Override
	public List<EnterpriseBasic> findEnterpriseBasicAll() {
		return enterpriseBasicDAO.findProjectBasicAll();
	}

}
