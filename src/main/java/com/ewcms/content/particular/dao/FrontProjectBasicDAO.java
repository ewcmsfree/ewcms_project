/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
package com.ewcms.content.particular.dao;

import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ewcms.common.dao.JpaDAO;
import com.ewcms.content.particular.model.EmployeBasic;
import com.ewcms.content.particular.model.ProjectArticle;
import com.ewcms.content.particular.model.ProjectBasic;
import com.ewcms.content.particular.model.ProjectBasic.Shape;

@Repository
public class FrontProjectBasicDAO extends JpaDAO<Long, ProjectBasic> {
	private JdbcTemplate jdbcTemplate;
    @Autowired
    public void setDataSource(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }	
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
	
	public List<ProjectBasic> findProjectBasicAll(Integer number){
		if(number==null){
			String hql = "From ProjectBasic As e Order By e.cardCode";
			TypedQuery<ProjectBasic> query = this.getEntityManager().createQuery(hql, ProjectBasic.class);
			return query.getResultList();
		}else{
			String hql = "From ProjectBasic As p Order By p.buildTime desc limit "+number;
			TypedQuery<ProjectBasic> query = this.getEntityManager().createQuery(hql, ProjectBasic.class);
			return query.getResultList();		
		}
	}
	
    public int getProjectBasicCount() {
        String sql = "Select count(id) From particular_project_basic";
        return (int) jdbcTemplate.queryForLong(sql);
    } 
    
	public List<ProjectBasic> findProjectShenPiBasicLimit(String shape,Integer number){
		String hql = "From ProjectBasic As p where p.shape=:shape Order By p.buildTime desc limit "+number;
		TypedQuery<ProjectBasic> query = this.getEntityManager().createQuery(hql, ProjectBasic.class);
		query.setParameter("shape", Shape.valueOf(shape));
		return query.getResultList();
	}
}
