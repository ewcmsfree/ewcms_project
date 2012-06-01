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
import com.ewcms.content.particular.model.ProjectArticle;
import com.ewcms.content.particular.model.ProjectBasic;
import com.ewcms.content.particular.model.ProjectBasic.Shape;
import com.ewcms.content.particular.model.PublishingSector;
import com.ewcms.frontweb.ChannelVO;

@Repository
public class FrontProjectArticleDAO extends JpaDAO<Long, ProjectArticle> {
    private JdbcTemplate jdbcTemplate;
	@Autowired
	private FrontProjectBasicDAO frontProjectBasicDAO;
    @Autowired
    public void setDataSource(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }
	public List<ProjectArticle> findProjectArticleLimit(Integer number){
		String hql = "From ProjectArticle As p Order By p.published desc limit "+number;
		TypedQuery<ProjectArticle> query = this.getEntityManager().createQuery(hql, ProjectArticle.class);
		return query.getResultList();
	}
	
	public List<ProjectArticle> findProjectArticleByCode(String code){
		String hql = "From ProjectArticle As p where p.projectBasic.code=:code Order By p.published desc ";
		TypedQuery<ProjectArticle> query = this.getEntityManager().createQuery(hql, ProjectArticle.class);
		query.setParameter("code", code);
		return query.getResultList();
	}	
	public List<ProjectArticle> findProjectShenPiArticleLimit(String shape,Integer number){
		String hql = "From ProjectArticle As p where p.projectBasic.shape=:shape Order By p.published desc limit "+number;
		TypedQuery<ProjectArticle> query = this.getEntityManager().createQuery(hql, ProjectArticle.class);
		query.setParameter("shape", Shape.valueOf(shape));
		return query.getResultList();
	}
	
	public List<ProjectArticle> findProjectChannellArticleLimit(Integer channelId,Integer number){
		String hql = "From ProjectArticle As p where p.channelId=:channelId Order By p.published desc limit "+number;
		TypedQuery<ProjectArticle> query = this.getEntityManager().createQuery(hql, ProjectArticle.class);
		query.setParameter("channelId", channelId);
		return query.getResultList();
	}
	
    public List<ProjectArticle> findProjectArticleByPage(int page, int row) {
        String sql = "Select * "
                + "From particular_project_article "
                + "Order By published desc Limit ? OffSet ?";
        int offset = page * row;
        Object[] params = new Object[]{row, offset};
        List<ProjectArticle> list = jdbcTemplate.query(sql, params, new RowMapper<ProjectArticle>() {

            @Override
            public ProjectArticle mapRow(ResultSet rs, int rowNum) throws SQLException {
                return interactionRowMapper(rs);
            }
        });

        return list;
    }
    

    public int getProjectArticleCount(Integer channelId) {
    	if(channelId == null){
        String sql = "Select count(id) From particular_project_article";
        return (int) jdbcTemplate.queryForLong(sql);
    	}else{
            String sql = "Select count(id) From particular_project_article where channel_id=?";
            Object[] params = new Object[]{channelId};
            return (int) jdbcTemplate.queryForLong(sql,params);    		
    	}
    } 
  
    public int getProjectShapeArticleCount(String shape) {

            String sql = "Select count(*) From particular_project_article t1 ,particular_project_basic t2 where t1.project_basic_code=t2.code and t2.shape=?";
            Object[] params = new Object[]{shape};
            return (int) jdbcTemplate.queryForLong(sql,params);
    } 
    
    private ProjectArticle interactionRowMapper(ResultSet rs) throws SQLException {
    	ProjectArticle vo = new ProjectArticle();
    	vo.setId(rs.getLong("id"));
    	vo.setDense(Dense.valueOf(rs.getString("dense")));
    	vo.setPublished(rs.getDate("published"));
    	vo.setProjectBasic(frontProjectBasicDAO.findProjectBasicByCode(rs.getString("project_basic_code")));
        return vo;
    }   
    
    public List<ProjectArticle> findProjectChannelArticleByPage(int channelId,int page, int row) {
        String sql = "Select * "
                + "From particular_project_article "
        		+ "where channel_id=? "
                + "Order By published desc Limit ? OffSet ?";
        int offset = page * row;
        Object[] params = new Object[]{channelId,row, offset};
        List<ProjectArticle> list = jdbcTemplate.query(sql, params, new RowMapper<ProjectArticle>() {

            @Override
            public ProjectArticle mapRow(ResultSet rs, int rowNum) throws SQLException {
                return interactionRowMapper(rs);
            }
        });

        return list;
    } 
    
    public ChannelVO findChannel(int channelId) {
        String sql = "Select * "
                + "From site_channel "
        		+ "where id=? ";
        Object[] params = new Object[]{channelId};
        List<ChannelVO> list = jdbcTemplate.query(sql, params, new RowMapper<ChannelVO>() {

            @Override
            public ChannelVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                return channelRowMapper(rs);
            }
        });
        if(list!=null&&list.size()>0){
        	return list.get(0);
        }
        return null;
    }  
    
    private ChannelVO channelRowMapper(ResultSet rs) throws SQLException {
    	ChannelVO vo = new ChannelVO();
    	vo.setId(rs.getInt("id"));
    	vo.setChannelName(rs.getString("name"));
        return vo;
    }     
}
