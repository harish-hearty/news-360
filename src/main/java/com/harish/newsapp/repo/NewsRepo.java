package com.harish.newsapp.repo;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Component;

import okhttp3.OkHttpClient;
import okhttp3.Response;

@Component
public class NewsRepo {
	
	private OkHttpClient client;
	private Response response;
	private String APIkey = "348ffba424574302879125452b7cdfd4";
	
	private Date date;
	private SimpleDateFormat dateFormat;
	
	
	public  JSONObject getNews(String key) {	
		
		client = new OkHttpClient();
		date = new Date();
		dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		okhttp3.Request request = new okhttp3.Request.Builder()
				.url("https://newsapi.org/v2/everything?q="+key+"&from="+dateFormat.format(date)+"&apiKey="+APIkey)
				.build();

        try {
            response = client.newCall(request).execute();
            return new JSONObject(response.body().string());
        }catch (IOException | JSONException e){
            e.printStackTrace();
        }
        return null;		
	}  
	
	public  JSONObject getHeadlines(String category) {	
		
		client = new OkHttpClient();
		
		okhttp3.Request request = new okhttp3.Request.Builder()
				.url("https://newsapi.org/v2/top-headlines?country=in&category="+category+"&apiKey="+APIkey)
				.build();

        try {
            response = client.newCall(request).execute();
            return new JSONObject(response.body().string());
        }catch (IOException | JSONException e){
            e.printStackTrace();
        }
        return null;		
	}  


}
