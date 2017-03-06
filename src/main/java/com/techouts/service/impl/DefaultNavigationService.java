package com.techouts.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.techouts.dao.impl.DefaultDao;
import com.techouts.pojo.CategoryPojo;
import com.techouts.service.NavigationService;

public class DefaultNavigationService implements NavigationService{

	@Autowired
	private DefaultDao dao;

	public Map<String, List<CategoryPojo>> getServiceCategory() {
		Map<String, List<CategoryPojo>> categoryMap=dao.getDaoCategory();
		System.out.println("nav service");
		return categoryMap;
	}

}