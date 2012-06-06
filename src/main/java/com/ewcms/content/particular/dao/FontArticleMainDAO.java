package com.ewcms.content.particular.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.ewcms.frontweb.ArticleMainVO;

@Repository
public class FontArticleMainDAO {
    private JdbcTemplate jdbcTemplate;
    @Autowired
    public void setDataSource(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }
    
    public List<ArticleMainVO> findArticleMainByChannelId(int channelId) {
        String sql = "Select t2.title,t2.url "
                + "From content_article_main t1,content_article t2 "
        		+ "where t1.article_id=t2.id and t1.channel_id=? "
        		+ "order by t2.id";
        Object[] params = new Object[]{channelId};
        List<ArticleMainVO> list = jdbcTemplate.query(sql, params, new RowMapper<ArticleMainVO>() {
            @Override
            public ArticleMainVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                return articleRowMapper(rs);
            }
        });
        return list;
    }  
    
    private ArticleMainVO articleRowMapper(ResultSet rs) throws SQLException {
    	ArticleMainVO vo = new ArticleMainVO();
    	vo.setTitle(rs.getString("title"));
    	vo.setLink(rs.getString("url"));
        return vo;
    }    
}