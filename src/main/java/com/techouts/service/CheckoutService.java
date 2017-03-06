package com.techouts.service;

import java.sql.SQLException;
import java.util.List;

import com.techouts.pojo.UserPojo;

public interface CheckoutService {
	
	List<UserPojo> getcheckoutservice(UserPojo employee) throws SQLException;
	public boolean getregistrationservice(UserPojo employee);

}
