package com.techouts.service;

import java.util.List;
import java.util.Map;

import com.techouts.pojo.CategoryPojo;

public interface NavigationService {

	Map<String, List<CategoryPojo>> getServiceCategory();
}
