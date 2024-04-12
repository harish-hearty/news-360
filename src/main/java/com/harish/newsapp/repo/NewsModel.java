package com.harish.newsapp.repo;

import org.springframework.stereotype.Component;

@Component
public class NewsModel {

	private String title = null;
	private String source = null;
	private String desc = null;
	private String url = null;
	private String urlimg = null;
	private String publishedAt = null;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUrlimg() {
		return urlimg;
	}

	public void setUrlimg(String urlimg) {
		this.urlimg = urlimg;
	}

	public String getPublishedAt() {
		return publishedAt;
	}

	public void setPublishedAt(String publishedAt) {
		this.publishedAt = publishedAt;
	}	
	
	
}
