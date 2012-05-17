/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */

package com.ewcms.content.particular.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ewcms.content.particular.ParticularFacable;
import com.ewcms.content.particular.model.ProjectBasic;
import com.ewcms.web.CrudBaseAction;

/**
 * @author 吴智俊
 */
public class ProjectBasicAction extends CrudBaseAction<ProjectBasic, Long> {

	private static final long serialVersionUID = -7215016049247026935L;

	@Autowired
	private ParticularFacable particularFac;

	public ProjectBasic getProjectBasicVo() {
		return super.getVo();
	}

	public void setProjectBasicVo(ProjectBasic projectBasic) {
		super.setVo(projectBasic);
	}

	public List<Long> getSelections() {
		return super.getOperatorPK();
	}

	public void setSelections(List<Long> selections) {
		super.setOperatorPK(selections);
	}

	@Override
	protected Long getPK(ProjectBasic vo) {
		return vo.getId();
	}

	@Override
	protected ProjectBasic getOperator(Long pk) {
		return particularFac.findProjectBasicById(pk);
	}

	@Override
	protected void deleteOperator(Long pk) {
		particularFac.delProjectBasic(pk);
	}

	@Override
	protected Long saveOperator(ProjectBasic vo, boolean isUpdate) {
		if (isUpdate) {
			return particularFac.updProjectBasic(vo);
		} else {
			return particularFac.addProjectBasic(vo);
		}
	}

	@Override
	protected ProjectBasic createEmptyVo() {
		return new ProjectBasic();
	}
}