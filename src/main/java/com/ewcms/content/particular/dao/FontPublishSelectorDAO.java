package com.ewcms.content.particular.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.ewcms.common.dao.JpaDAO;
import com.ewcms.content.particular.model.ProjectArticle;
import com.ewcms.content.particular.model.PublishingSector;
@Repository
public class FontPublishSelectorDAO extends JpaDAO<Long, PublishingSector> {
	public List<PublishingSector> findPublishSelectorAll(){
		String hql = "From PublishingSector As p Order By p.id ";
		TypedQuery<PublishingSector> query = this.getEntityManager().createQuery(hql, PublishingSector.class);
		return query.getResultList();
	}
}
