package com.techouts.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.techouts.pojo.CategoryPojo;
import com.techouts.pojo.ProductPojo;
import com.techouts.pojo.UserPojo;

public interface Dao {

	public List<UserPojo> getlogindao(UserPojo employee) throws SQLException;
	public Boolean getregistrationdao(final UserPojo emp);
	
	Map<String, List<CategoryPojo>> getDaoCategory();
	
	List<ProductPojo> getDaoProductList(String id);

}