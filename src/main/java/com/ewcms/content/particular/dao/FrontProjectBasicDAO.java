package com.ewcms.content.particular.dao;

import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.ewcms.common.dao.JpaDAO;
import com.ewcms.content.particular.model.ProjectBasic;

@Repository
public class FrontProjectBasicDAO extends JpaDAO<Long, ProjectBasic> {
	public ProjectBasic findProjectBasicByCode(final String code){
		String hql = "From ProjectBasic As p Where p.code=:code";
		TypedQuery<ProjectBasic> query = this.getEntityManager().createQuery(hql, ProjectBasic.class);
		query.setParameter("code", code);
		ProjectBasic projectBasic = null;
		try{
			projectBasic = (ProjectBasic) query.getSingleResult();
		}catch(NoResultException e){
		}
		return projectBasic;
	}
}
