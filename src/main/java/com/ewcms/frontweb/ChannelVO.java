package com.ewcms.frontweb;

import java.io.Serializable;

public class ChannelVO implements Serializable {
	private Integer id;
	private String channelName;
	public String getChannelName() {
		return channelName;
	}
	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
}
