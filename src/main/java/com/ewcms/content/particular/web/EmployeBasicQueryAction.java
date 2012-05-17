package com.ewcms.content.particular.web;

import static com.ewcms.common.lang.EmptyUtil.isStringNotEmpty;

import java.util.List;

import com.ewcms.common.query.Resultable;
import com.ewcms.common.query.jpa.EntityQueryable;
import com.ewcms.common.query.jpa.QueryFactory;
import com.ewcms.content.particular.model.EmployeBasic;
import com.ewcms.web.QueryBaseAction;

public class EmployeBasicQueryAction extends QueryBaseAction{

	private static final long serialVersionUID = -4149344019910643538L;

	@Override
	protected Resultable queryResult(QueryFactory queryFactory,
			String cacheKey, int rows, int page, Order order) {
    	EntityQueryable query = queryFactory.createEntityQuery(EmployeBasic.class).setPage(page).setRow(rows).orderAsc("id");
    	
    	String name = getParameterValue(String.class, "name", "");
    	if (isStringNotEmpty(name)) query.likeAnywhere("name", name);
    	
    	String cardCode = getParameterValue(String.class, "cardCode", "");
    	if (isStringNotEmpty(cardCode)) query.likeAnywhere("cardCode", cardCode);
    	
    	entityOrder(query, order);
    	return query.queryCacheResult(cacheKey);
	}

	@Override
	protected Resultable querySelectionsResult(QueryFactory queryFactory, int rows, int page, String[] selections, Order order) {
    	EntityQueryable query = queryFactory.createEntityQuery(EmployeBasic.class).setPage(page).setRow(rows).orderAsc("id");
    	
        List<Long> ids = getIds(Long.class);
        query.in("id", ids);
        
        return query.queryResult();    
	}
}
