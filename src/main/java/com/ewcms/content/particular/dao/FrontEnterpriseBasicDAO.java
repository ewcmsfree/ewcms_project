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
import com.ewcms.content.particular.model.EnterpriseArticle;
import com.ewcms.content.particular.model.EnterpriseBasic;

@Repository
public class FrontEnterpriseBasicDAO extends JpaDAO<Long, EnterpriseBasic> {
	private JdbcTemplate jdbcTemplate;
    @Autowired
    public void setDataSource(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }	
	
	public List<EnterpriseBasic> findEnterpriseBasicAll(Integer number){
		if(number==null){
			String hql = "From EnterpriseBasic As e where e.release=true Order By e.yyzzzch";
			TypedQuery<EnterpriseBasic> query = this.getEntityManager().createQuery(hql, EnterpriseBasic.class);
			return query.getResultList();
		}else{
			String hql = "From EnterpriseBasic As e where e.release=true Order By e.yyzzzch limit "+number;
			TypedQuery<EnterpriseBasic> query = this.getEntityManager().createQuery(hql, EnterpriseBasic.class);
			return query.getResultList();			
		}
	}
	
	public EnterpriseBasic findEnterpriseBasicByYyzzzch(final String yyzzzch){
		String hql = "From EnterpriseBasic As p Where p.yyzzzch=:yyzzzch and p.release=true ";
		TypedQuery<EnterpriseBasic> query = this.getEntityManager().createQuery(hql, EnterpriseBasic.class);
		query.setParameter("yyzzzch", yyzzzch);
		EnterpriseBasic enterpriseBasic = null;
		try{
			enterpriseBasic = (EnterpriseBasic) query.getSingleResult();
		}catch(NoResultException e){
		}
		return enterpriseBasic;
	}
    public int getEnterpriseBasicCount() {
        String sql = "Select count(id) From particular_enterprise_basic where release=true";
        return (int) jdbcTemplate.queryForLong(sql);
    } 
    
	public List<EnterpriseBasic> findEnterpriseBasicBySector(Long organId){
		String hql = "From EnterpriseBasic As p where p.organ.id=:organId and p.release=true Order By p.published desc ";
		TypedQuery<EnterpriseBasic> query = this.getEntityManager().createQuery(hql, EnterpriseBasic.class);
		query.setParameter("organId",Integer.valueOf(organId.toString()));
		return query.getResultList();
	}    
}
