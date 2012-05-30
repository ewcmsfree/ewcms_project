package com.ewcms.content.particular.dao;

import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ewcms.common.dao.JpaDAO;
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
			String hql = "From EnterpriseBasic As e Order By e.yyzzzch";
			TypedQuery<EnterpriseBasic> query = this.getEntityManager().createQuery(hql, EnterpriseBasic.class);
			return query.getResultList();
		}else{
			String hql = "From EnterpriseBasic As e Order By e.yyzzzch limit "+number;
			TypedQuery<EnterpriseBasic> query = this.getEntityManager().createQuery(hql, EnterpriseBasic.class);
			return query.getResultList();			
		}
	}
	
	public EnterpriseBasic findEnterpriseBasicByYyzzzch(final String yyzzzch){
		String hql = "From EnterpriseBasic As p Where p.yyzzzch=:yyzzzch";
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
        String sql = "Select count(id) From particular_enterprise_basic";
        return (int) jdbcTemplate.queryForLong(sql);
    } 
    
    
}
