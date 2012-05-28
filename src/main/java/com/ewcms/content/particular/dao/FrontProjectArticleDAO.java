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
import com.ewcms.content.particular.model.PublishingSector;

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
    
}
