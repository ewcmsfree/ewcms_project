/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */

package com.ewcms.web;

import org.springframework.stereotype.Controller;


/**
 * 首页Action
 *
 * @author 周冬初
 */
@Controller("home")
public class HomeAction extends EwcmsBaseAction {
    
	private static final long serialVersionUID = -1585813168152878468L;

	private Integer siteId;
    private String siteName;
    private String realName;
    private String userName;
    private boolean hasSite = true;
    
	public String execute() {
		return SUCCESS;
	}
	
	public Integer getSiteId() {
		return siteId;
	}

	public void setSiteId(Integer siteId) {
		this.siteId = siteId;
	}
	
    public String getSiteName() {
        return siteName;
    }

    public void setSiteName(String siteName) {
        this.siteName = siteName;
    }
    
    public String getRealName(){
        return realName;
    }
    
    public Boolean getHasSite(){
        return hasSite;
    }
    
    public String getUserName(){
    	return userName;
    }
}
