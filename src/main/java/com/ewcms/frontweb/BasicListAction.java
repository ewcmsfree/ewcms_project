package com.ewcms.frontweb;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ewcms.content.particular.FrontParticularFacable;
import com.ewcms.content.particular.model.EmployeBasic;
import com.ewcms.content.particular.model.EnterpriseBasic;
import com.ewcms.content.particular.model.ProjectBasic;

public class BasicListAction {
	private final static int DEFAULT_ROW = 20;
	private List<ProjectBasic> projectBasicList;
	private List<EmployeBasic> employeBasicList;
	private List<EnterpriseBasic> enterpriseBasicList;
    protected int pageNumber;
    protected int row = DEFAULT_ROW;
    protected Page page;
    
	@Autowired
	private FrontParticularFacable particularFac;
	
	public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public Page getPage() {
        return this.page;
    }  
    
	public List<ProjectBasic> getProjectBasicList() {
		return projectBasicList;
	}

	public void setProjectBasicList(List<ProjectBasic> projectBasicList) {
		this.projectBasicList = projectBasicList;
	}
	
	public List<EmployeBasic> getEmployeBasicList() {
		return employeBasicList;
	}

	public void setEmployeBasicList(List<EmployeBasic> employeBasicList) {
		this.employeBasicList = employeBasicList;
	}

	public List<EnterpriseBasic> getEnterpriseBasicList() {
		return enterpriseBasicList;
	}

	public void setEnterpriseBasicList(List<EnterpriseBasic> enterpriseBasicList) {
		this.enterpriseBasicList = enterpriseBasicList;
	}

	public String projectBasicListByPage(){
		projectBasicList = particularFac.findProjectBasicAll(null);
		page =  new Page.Builder(particularFac.getProjectBasicCount(), pageNumber + 1).setPageSize(row).build();
		return "success";
	}
	
	public String enterpriseBasicListByPage(){
		enterpriseBasicList = particularFac.findEnterpriseBasicAll(null);
		page =  new Page.Builder(particularFac.getEnterpriseBasicCount(), pageNumber + 1).setPageSize(row).build();
		return "success";
	}
	
	public String employeBasicListByPage(){
		employeBasicList = particularFac.findEmployeBasicAll(null);
		page =  new Page.Builder(particularFac.getEmployeBasicCount(), pageNumber + 1).setPageSize(row).build();
		return "success";
	}	
}
