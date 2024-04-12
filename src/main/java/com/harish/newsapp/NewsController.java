package com.harish.newsapp;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.harish.newsapp.repo.NewsRepo;
import com.harish.newsapp.service.NewsService;


@Controller
public class NewsController {
	
	@Autowired
	NewsService ns;
	@Autowired
	NewsRepo nr;
	
	@RequestMapping("/")
	ModelAndView home(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("view");
		mv.addObject("articles",ns.returnNewsObjects("general"));
		req.setAttribute("category", "TOP-HEADLINES");
		return mv;
	}
	
	@RequestMapping("search")
	ModelAndView Searchservice(String key, HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("view");
		mv.addObject("articles",ns.returnNewsObjects(key));
		req.setAttribute("category", "Searched-content : "+key);
		return mv;
	}
	
	@RequestMapping("/{id}")
	ModelAndView Categoryservice(@PathVariable("id") String id, HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("view");
		mv.addObject("articles",ns.returnNewsObjects(id));
		req.setAttribute("category", id.toUpperCase());
		return mv;
	}
	
	
}
