/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
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
