package com.ewcms.content.particular.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import org.hibernate.annotations.Index;

@Entity
@Table(name = "content_article")
public class Article implements Serializable {
	@Id
	@Column(name = "id")	
	private Long id;
	@Column()
	private String title;
	@Column()	
	private Date published;
	@Column(name = "author")
	private String author;
	@Column(name = "origin")
	private String origin;	
	@OneToMany(cascade = CascadeType.ALL, targetEntity = Content.class,fetch=FetchType.EAGER, orphanRemoval = true)
	@JoinColumn(name = "article_id")
	@OrderBy(value = "page asc")
	@Index(name = "idx_content_article_id")
	private List<Content> contents = new ArrayList<Content>();
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getPublished() {
		return published;
	}
	public void setPublished(Date published) {
		this.published = published;
	}
	public List<Content> getContents() {
		return contents;
	}
	public void setContents(List<Content> contents) {
		this.contents = contents;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}	
	
	public Content getContent(){
		if(contents.size()>0){
		return contents.get(0);
		}else{
			return new Content();
		}
	}
}
