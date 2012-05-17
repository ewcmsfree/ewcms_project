package com.ewcms.content.particular.service;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import com.ewcms.content.particular.dao.ApprovalRecordDAO;
import com.ewcms.content.particular.dao.IndustryCodeDAO;
import com.ewcms.content.particular.dao.ProjectBasicDAO;
import com.ewcms.content.particular.dao.PublishingSectorDAO;
import com.ewcms.content.particular.dao.ZoningCodeDAO;
import com.ewcms.content.particular.model.ApprovalRecord;
import com.ewcms.content.particular.model.IndustryCode;
import com.ewcms.content.particular.model.ProjectBasic;
import com.ewcms.content.particular.model.PublishingSector;
import com.ewcms.content.particular.model.ZoningCode;

@Service
public class ProjectBasicService implements ProjectBasicServiceable {

	@Autowired
	private ProjectBasicDAO projectBasicDAO;
	@Autowired
	private ZoningCodeDAO zoningCodeDAO;
	@Autowired
	private ApprovalRecordDAO approvalRecordDAO;
	@Autowired
	private IndustryCodeDAO industryCodeDAO; 
	@Autowired
	private PublishingSectorDAO publishingSectorDAO;
	
	@Override
	public Long addProjectBasic(ProjectBasic projectBasic) {
		String zoningCode_code = projectBasic.getZoningCode().getCode();
		String organizationCode_code = projectBasic.getOrganizationCode();
		Calendar ca = Calendar.getInstance();
		ca.setTime(projectBasic.getBuildTime());
		String year = String.valueOf(ca.get(Calendar.YEAR));
		String unitId = projectBasic.getUnitId();
		String code = zoningCode_code + organizationCode_code + year + unitId;
		projectBasic.setCode(code);
		
		setZoningCode(projectBasic);
		setApprovalRecord(projectBasic);
		setIndustryCode(projectBasic);
		setPublishingSector(projectBasic);
		
		projectBasicDAO.persist(projectBasic);
		return projectBasic.getId();
	}

	@Override
	public Long updProjectBasic(ProjectBasic projectBasic) {
		setZoningCode(projectBasic);
		setApprovalRecord(projectBasic);
		setIndustryCode(projectBasic);
		setPublishingSector(projectBasic);

		projectBasicDAO.merge(projectBasic);
		return projectBasic.getId();
	}

	private void setZoningCode(ProjectBasic projectBasic){
		String zoningCode_code = projectBasic.getZoningCode().getCode();
		Assert.notNull(zoningCode_code);
		ZoningCode zoningCode = zoningCodeDAO.findZoningCodeByCode(zoningCode_code);
		Assert.notNull(zoningCode);
		projectBasic.setZoningCode(zoningCode);
	}
	
	private void setApprovalRecord(ProjectBasic projectBasic){
		String approvalRecord_code = projectBasic.getApprovalRecord().getCode();
		Assert.notNull(approvalRecord_code);
		ApprovalRecord approvalRecord = approvalRecordDAO.findApprovalRecordByCode(approvalRecord_code);
		Assert.notNull(approvalRecord);
		projectBasic.setApprovalRecord(approvalRecord);
	}
	
	private void setIndustryCode(ProjectBasic projectBasic){
		String industryCode_code = projectBasic.getIndustryCode().getCode();
		Assert.notNull(industryCode_code);
		IndustryCode industryCode = industryCodeDAO.findIndustryCodeByCode(industryCode_code);
		Assert.notNull(industryCode);
		projectBasic.setIndustryCode(industryCode);
	}
	
	private void setPublishingSector(ProjectBasic projectBasic){
		String publishingSector_code = projectBasic.getPublishingSector().getCode();
		Assert.notNull(publishingSector_code);
		PublishingSector publishingSector = publishingSectorDAO.findPublishingSectorByCode(publishingSector_code);
		Assert.notNull(publishingSector);
		projectBasic.setPublishingSector(publishingSector);
	}
	
	@Override
	public void delProjectBasic(Long id) {
		projectBasicDAO.removeByPK(id);
	}

	@Override
	public ProjectBasic findProjectBasicById(Long id) {
		return projectBasicDAO.get(id);
	}
	
	@Override
	public List<ProjectBasic> findProjectBasicAll(){
		return projectBasicDAO.findProjectBasicAll();
	}
}
