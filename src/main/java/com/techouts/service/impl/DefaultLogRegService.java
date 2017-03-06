package com.techouts.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.techouts.dao.impl.DefaultDao;
import com.techouts.pojo.UserPojo;
import com.techouts.service.LogRegService;

public class DefaultLogRegService implements LogRegService{
	
	@Autowired
	private DefaultDao dao;
	boolean ls;

	public List<UserPojo> getloginservice(UserPojo employee)
			throws SQLException {
		
		
		List<UserPojo> emplist;
		emplist=dao.getlogindao(employee);
		System.out.println("emplist"+emplist);
		
		
		return emplist;
	}
	
	public boolean getregistrationservice(UserPojo employee){
		
		ls=dao.getregistrationdao(employee);
		return ls;
	}
	

}
