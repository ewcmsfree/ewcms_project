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
import com.ewcms.content.particular.model.EmployeArticle;
import com.ewcms.content.particular.model.EnterpriseArticle;

@Repository
public class FrontEmployeArticleDAO extends JpaDAO<Long, EmployeArticle> {
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private FrontEmployeBasicDAO frontEmployeBasicDAO;
    @Autowired
    public void setDataSource(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }
    
	public List<EmployeArticle> findEmployeArticleLimit(Integer number){
		String hql = "From EmployeArticle As p Order By p.published desc limit "+number;
		TypedQuery<EmployeArticle> query = this.getEntityManager().createQuery(hql, EmployeArticle.class);
		return query.getResultList();
	}
	
	public List<EmployeArticle> findEmployeChannelArticleLimit(Integer channelId,Integer number){
		String hql = "From EmployeArticle As p where p.channelId=:channelId Order By p.published desc limit "+number;
		TypedQuery<EmployeArticle> query = this.getEntityManager().createQuery(hql, EmployeArticle.class);
		query.setParameter("channelId", channelId);
		return query.getResultList();
	}	

    public List<EmployeArticle> findEmployeArticleByPage(int page, int row) {
        String sql = "Select * "
                + "From particular_employe_article "
                + "Order By published desc Limit ? OffSet ?";
        int offset = page * row;
        Object[] params = new Object[]{row, offset};
        List<EmployeArticle> list = jdbcTemplate.query(sql, params, new RowMapper<EmployeArticle>() {

            @Override
            public EmployeArticle mapRow(ResultSet rs, int rowNum) throws SQLException {
                return interactionRowMapper(rs);
            }
        });

        return list;
    }
    
    public int getEmployeArticleCount(Integer channelId) {
    	if(channelId == null){
        String sql = "Select count(id) From particular_employe_article";
        return (int) jdbcTemplate.queryForLong(sql);
    	}else{
            String sql = "Select count(id) From particular_employe_article where channel_id=?";
            Object[] params = new Object[]{channelId};
            return (int) jdbcTemplate.queryForLong(sql,params);    		
    	}
    }  
    
    private EmployeArticle interactionRowMapper(ResultSet rs) throws SQLException {
    	EmployeArticle vo = new EmployeArticle();
    	vo.setId(rs.getLong("id"));
    	vo.setDense(Dense.valueOf(rs.getString("dense")));
    	vo.setPublished(rs.getDate("published"));
    	vo.setEmployeBasic(frontEmployeBasicDAO.findEmployeBasicByCardCode(rs.getString("employebasic_cardcode")));
        return vo;
    }
    
    public List<EmployeArticle> findEmployeChannelArticleByPage(int channelId,int page, int row) {
        String sql = "Select * "
                + "From particular_employe_article "
        		+ "where channel_id=? "
                + "Order By published desc Limit ? OffSet ?";
        int offset = page * row;
        Object[] params = new Object[]{channelId,row, offset};
        List<EmployeArticle> list = jdbcTemplate.query(sql, params, new RowMapper<EmployeArticle>() {

            @Override
            public EmployeArticle mapRow(ResultSet rs, int rowNum) throws SQLException {
                return interactionRowMapper(rs);
            }
        });
        return list;
    }
    
}
