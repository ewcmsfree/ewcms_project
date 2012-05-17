package com.ewcms.content.particular.dao;

import org.springframework.stereotype.Repository;

import com.ewcms.common.dao.JpaDAO;
import com.ewcms.content.particular.model.ProjectArticle;

@Repository
public class ProjectArticleDAO extends JpaDAO<Long, ProjectArticle> {
}
