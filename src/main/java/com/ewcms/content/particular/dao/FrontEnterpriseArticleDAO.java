/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
package com.ewcms.content.particular.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.persistence.TypedQuery;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.ewcms.common.dao.JpaDAO;
import com.ewcms.content.particular.model.Dense;
import com.ewcms.content.particular.model.EnterpriseArticle;

@Repository
public class FrontEnterpriseArticleDAO extends JpaDAO<Long, EnterpriseArticle> {
	 private JdbcTemplate jdbcTemplate;
		@Autowired
		private FrontEnterpriseBasicDAO frontEnterpriseBasicDAO;
	    @Autowired
	    public void setDataSource(DataSource dataSource) {
	        jdbcTemplate = new JdbcTemplate(dataSource);
	    }
	    
		public List<EnterpriseArticle> findEnterpriseArticleLimit(Integer number){
			String hql = "From EnterpriseArticle As p Order By p.published desc limit "+number;
			TypedQuery<EnterpriseArticle> query = this.getEntityManager().createQuery(hql, EnterpriseArticle.class);
			return query.getResultList();
		}
		public List<EnterpriseArticle> findEnterpriseChannelArticleLimit(Integer channelId,Integer number){
			String hql = "From EnterpriseArticle As p where p.channelId=:channelId Order By p.published desc limit "+number;
			TypedQuery<EnterpriseArticle> query = this.getEntityManager().createQuery(hql, EnterpriseArticle.class);
			query.setParameter("channelId", channelId);
			return query.getResultList();
		}
		
		public List<EnterpriseArticle> findEnterpriseArticleBySector(Long organId){
			String hql = "From EnterpriseArticle As p where p.organ.id=:organId Order By p.published desc ";
			TypedQuery<EnterpriseArticle> query = this.getEntityManager().createQuery(hql, EnterpriseArticle.class);
			query.setParameter("organId",Integer.valueOf(organId.toString()));
			return query.getResultList();
		}
		public List<EnterpriseArticle> findEnterpriseArticleByCode(String code){
			String hql = "From EnterpriseArticle As p where p.enterpriseBasic.yyzzzch=:code Order By p.published desc ";
			TypedQuery<EnterpriseArticle> query = this.getEntityManager().createQuery(hql, EnterpriseArticle.class);
			query.setParameter("code", code);
			return query.getResultList();
		}
		
	    public List<EnterpriseArticle> findEnterpriseArticleByPage(int page, int row) {
	        String sql = "Select * "
	                + "From particular_enterprise_article "
	                + "Order By published desc Limit ? OffSet ?";
	        int offset = page * row;
	        Object[] params = new Object[]{row, offset};
	        List<EnterpriseArticle> list = jdbcTemplate.query(sql, params, new RowMapper<EnterpriseArticle>() {

	            @Override
	            public EnterpriseArticle mapRow(ResultSet rs, int rowNum) throws SQLException {
	                return interactionRowMapper(rs);
	            }
	        });

	        return list;
	    }
	    
	    public List<EnterpriseArticle> findEnterpriseChannelArticleByPage(int channelId,int page, int row){
	        String sql = "Select * "
	                + "From particular_enterprise_article "
	                + "where channel_id=? "
	                + "Order By published desc Limit ? OffSet ?";
	        int offset = page * row;
	        Object[] params = new Object[]{channelId,row, offset};
	        List<EnterpriseArticle> list = jdbcTemplate.query(sql, params, new RowMapper<EnterpriseArticle>() {

	            @Override
	            public EnterpriseArticle mapRow(ResultSet rs, int rowNum) throws SQLException {
	                return interactionRowMapper(rs);
	            }
	        });

	        return list;
	    }	
	    
	    public int getEnterpriseArticleCount(Integer channelId) {
	    	if(channelId == null){
	        String sql = "Select count(id) From particular_enterprise_article";
	        return (int) jdbcTemplate.queryForLong(sql);
	    	}else{
	            String sql = "Select count(id) From particular_enterprise_article where channel_id=?";
	            Object[] params = new Object[]{channelId};
	            return (int) jdbcTemplate.queryForLong(sql,params);    		
	    	}
	    } 	    
	    private EnterpriseArticle interactionRowMapper(ResultSet rs) throws SQLException {
	    	EnterpriseArticle vo = new EnterpriseArticle();
	    	vo.setId(rs.getLong("id"));
	    	vo.setDense(Dense.valueOf(rs.getString("dense")));
	    	vo.setPublished(rs.getDate("published"));
	    	vo.setEnterpriseBasic(frontEnterpriseBasicDAO.get(rs.getLong("enterprisebasic_yyzzzch")));
	        return vo;
	    }	
}
