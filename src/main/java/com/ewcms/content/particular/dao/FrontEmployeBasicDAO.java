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
import com.ewcms.content.particular.model.EmployeArticle;
import com.ewcms.content.particular.model.EmployeBasic;
import com.ewcms.content.particular.model.ProjectBasic;

@Repository
public class FrontEmployeBasicDAO extends JpaDAO<Long, EmployeBasic> {
	private JdbcTemplate jdbcTemplate;
    @Autowired
    public void setDataSource(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }
	
	public List<EmployeBasic> findEmployeBasicAll(Integer number){
		if(number==null){
			String hql = "From EmployeBasic As e where e.release=true Order By e.published desc";
			TypedQuery<EmployeBasic> query = this.getEntityManager().createQuery(hql, EmployeBasic.class);
			return query.getResultList();
		}else{
			String hql = "From EmployeBasic As e where e.release=true Order By e.published desc limit " + number;
			TypedQuery<EmployeBasic> query = this.getEntityManager().createQuery(hql, EmployeBasic.class);
			return query.getResultList();		
		}
	}
	
	public EmployeBasic findEmployeBasicByCardCode(final String cardCode){
		String hql = "From EmployeBasic As p Where p.cardCode=:cardCode";
		TypedQuery<EmployeBasic> query = this.getEntityManager().createQuery(hql, EmployeBasic.class);
		query.setParameter("cardCode", cardCode);
		EmployeBasic employeBasic = null;
		try{
			employeBasic = (EmployeBasic) query.getSingleResult();
		}catch(NoResultException e){
		}
		return employeBasic;
	}
	
    public int getEmployeBasicCount() {
        String sql = "Select count(id) From particular_employe_basic where release=true ";
        return (int) jdbcTemplate.queryForLong(sql);
    } 
    
	public List<EmployeBasic> findEmployeBasicBySector(Long organId){
		String hql = "From EmployeBasic As p where p.organ.id=:organId and p.release=true Order By p.published desc ";
		TypedQuery<EmployeBasic> query = this.getEntityManager().createQuery(hql, EmployeBasic.class);
		query.setParameter("organId", Integer.valueOf(organId.toString()));
		return query.getResultList();
	}
}
