package com.ewcms.frontweb;

import java.io.Serializable;

public class ArticleMainVO implements Serializable {
	private String title;
	private String link;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	
	
}