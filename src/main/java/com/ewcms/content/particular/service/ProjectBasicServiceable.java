package com.ewcms.content.particular.service;

import java.util.List;

import com.ewcms.content.particular.model.ProjectBasic;

public interface ProjectBasicServiceable {
	
	public Long addProjectBasic(ProjectBasic projectBasic);
	
	public Long updProjectBasic(ProjectBasic projectBasic);
	
	public void delProjectBasic(Long id);
	
	public ProjectBasic findProjectBasicById(Long id);
	
	public List<ProjectBasic> findProjectBasicAll();
}
