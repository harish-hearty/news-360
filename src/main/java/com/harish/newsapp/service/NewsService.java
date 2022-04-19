package com.harish.newsapp.service;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.harish.newsapp.repo.NewsModel;
import com.harish.newsapp.repo.NewsRepo;

@Component
public class NewsService {

	@Autowired
	NewsRepo nr;
	@Autowired
	NewsModel nm[];
	
	private JSONObject js;
	private JSONArray articles;
	
	public NewsModel[] returnNewsObjects(String key) {
		if (key.equals("general")||key.equals("business")||key.equals("sports")||key.equals("entertainment")||key.equals("science")||key.equals("technology"))
			js = nr.getHeadlines(key);
		else
			js = nr.getNews(key);
		articles = js.getJSONArray("articles");
		nm = new NewsModel[articles.length()];
		
		for(int i=0;i<articles.length();i++) {
			nm[i] = new NewsModel();
			JSONObject jo = articles.getJSONObject(i);
			JSONObject source = jo.getJSONObject("source");
			nm[i].setSource(source.getString("name"));
			nm[i].setTitle(jo.getString("title"));
			if(jo.isNull("description"))
				nm[i].setDesc("no data");
			else
			    nm[i].setDesc(jo.getString("description"));
			if(jo.isNull("urlToImage"))
				nm[i].setUrlimg("https://winfort.net/wp-content/themes/consultix-1/images/no-image-found-360x260.png");
			else
				nm[i].setUrlimg(jo.getString("urlToImage"));
			nm[i].setPublishedAt(jo.getString("publishedAt"));
			nm[i].setUrl(jo.getString("url"));
			
		}
		return nm;
	}
	
}
