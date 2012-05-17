/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */

package com.ewcms.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author 周冬初
 *
 */
public class EwcmsBaseAction extends ActionSupport{  
	
	private static final long serialVersionUID = -5660770825409086565L;

	private static final Logger logger = LoggerFactory.getLogger(EwcmsBaseAction.class);
	/**
	 * 信息输出处理
	 * 
	 * @deprecated 程序引入正常的日志
	 */
    public void outputInfo(String e){
    	logger.info(e);
    }
}
