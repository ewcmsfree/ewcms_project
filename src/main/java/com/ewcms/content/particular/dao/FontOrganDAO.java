package com.ewcms.content.particular.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.ewcms.common.dao.JpaDAO;
import com.ewcms.content.particular.model.Organ;
@Repository
public class FontOrganDAO extends JpaDAO<Integer, Organ> {
	public List<Organ> findPublishSelectorAll(){
		String hql = "From Organ As p Order By p.id ";
		TypedQuery<Organ> query = this.getEntityManager().createQuery(hql, Organ.class);
		return query.getResultList();
	}
	
//	public PublishingSector getPublishingSectorByCode(String sectorCode){
//	String hql = "From PublishingSector As p where p.code=:sectorCode Order By p.id ";
//	TypedQuery<PublishingSector> query = this.getEntityManager().createQuery(hql, PublishingSector.class);
//	query.setParameter("sectorCode", sectorCode);
//	return query.getSingleResult();		
//}	
}
