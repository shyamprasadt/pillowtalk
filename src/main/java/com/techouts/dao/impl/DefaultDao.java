package com.techouts.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.techouts.dao.Dao;
import com.techouts.pojo.CategoryPojo;
import com.techouts.pojo.ProductPojo;
import com.techouts.pojo.UserPojo;

public class DefaultDao implements Dao{
	
	private JdbcTemplate jdbcTemplate;  
	  
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}
	
	boolean l=false;
	
	public List<UserPojo> getlogindao(UserPojo user) throws SQLException{
		String email=user.getEmail();
		String password=user.getPassword();
		
		return jdbcTemplate.query("select * from user where email='" +email+ "' and password='" +password+"'",new ResultSetExtractor<List<UserPojo>>(){  
			  
			public List<UserPojo> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<UserPojo> list=new ArrayList<UserPojo>();  

		        UserPojo u=new UserPojo();  
		        while(rs.next()){  
		          
		        u.setFirstname(rs.getString(1));
		        u.setLastname(rs.getString(2));
		        u.setEmail(rs.getString(3));
		        u.setMobile(rs.getString(4)); 
		        u.setPassword(rs.getString(5));
		        u.setGender(rs.getString(6));
		        list.add(u);  
		        }  
		        return list; 
		        
		        }  
		    });
			        
	}
	
	Boolean regval;
    
	public Boolean getregistrationdao(final UserPojo user){  
		String query="insert into user(firstname,lastname,email,mobile,password,gender) values(?,?,?,?,?,?)";  
	    return jdbcTemplate.execute(query,new PreparedStatementCallback<Boolean>(){  
	    public Boolean doInPreparedStatement(PreparedStatement ps)  
	            throws SQLException, DataAccessException {  
	        System.out.println("user email id  "+user.getEmail());
	    	
	        ps.setString(1,user.getFirstname());
	    	ps.setString(2,user.getLastname());
	    	ps.setString(3,user.getEmail());
	        ps.setString(4,user.getMobile());  
	        ps.setString(5,user.getPassword());  
	        ps.setString(6,user.getGender());  
	              
	        Boolean rd= ps.execute();
	        System.out.println("reg dao"+rd);
	        if(!rd){
	        	System.out.println("reg success in dao");
	        	regval=true;
	        }
	        
	         return regval;     
	    }  
	    });  
	}
	
	
	
	public Map<String, List<CategoryPojo>> getDaoCategory() {
		Map<String, List<CategoryPojo>> map=new LinkedHashMap<String, List<CategoryPojo>>();
		List<CategoryPojo> mainList;
		try {
			mainList=getmaincategory();
			Iterator<CategoryPojo> it=mainList.iterator();
			List<CategoryPojo> sublist;
			while(it.hasNext()){
				CategoryPojo cp=it.next();
				String skey=cp.getName();
				sublist=getsubcategory(cp.getId());
				map.put(skey, sublist);
			}
			System.out.println("dao map values"+map.values());
		} 
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		return map;
	}
	
	List<CategoryPojo> getmaincategory() throws SQLException{
		return jdbcTemplate.query("select * from category where super_category='main'",new ResultSetExtractor<List<CategoryPojo>>(){  
			  
			public List<CategoryPojo> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<CategoryPojo> list=new ArrayList<CategoryPojo>();  
 
		        while(rs.next()){ 
		        	CategoryPojo catpojo=new CategoryPojo();  
		        	catpojo.setId(rs.getString(1));
		        	catpojo.setName(rs.getString(2));
		        	catpojo.setSuper_category(rs.getString(3));
		        	catpojo.setDescription(rs.getString(4)); 
		        	catpojo.setSummary(rs.getString(5));
		        	list.add(catpojo);
		        	System.out.println("main cat name:"+catpojo.getName());
		        }  
		        return list; 
		        
		        }  
		    });

	}
	
	List<CategoryPojo> getsubcategory(String id) throws SQLException{
		System.out.println(" category id ="+id);
		return jdbcTemplate.query("select * from category where super_category='" +id+ "'",new ResultSetExtractor<List<CategoryPojo>>(){  
			  
			public List<CategoryPojo> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<CategoryPojo> subList=new ArrayList<CategoryPojo>();  

		          
		        while(rs.next()){  
		        	CategoryPojo catpojo=new CategoryPojo();  
		        	catpojo.setId(rs.getString(1));
		        	catpojo.setName(rs.getString(2));
		        	catpojo.setSuper_category(rs.getString(3));
		        	catpojo.setDescription(rs.getString(4)); 
		        	catpojo.setSummary(rs.getString(5));
		        	subList.add(catpojo);  
		        }
		        
		        Iterator<CategoryPojo> suit=subList.iterator();
		        while (suit.hasNext()) {
					CategoryPojo categoryPojo = (CategoryPojo) suit.next();
					System.out.println("list names"+categoryPojo.getName());
					
				}
		        return subList; 		        
		        }  
		    });

	}



	public List<ProductPojo> getDaoProductList(String pid) {
		
		return jdbcTemplate.query("select * from product_info where super_id='" +pid+ "'",new ResultSetExtractor<List<ProductPojo>>(){  
			  
			public List<ProductPojo> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
				List<ProductPojo> plist=new ArrayList<ProductPojo>();  
 
		        while(rs.next()){ 
		        	ProductPojo prodpojo=new ProductPojo();  
		        	prodpojo.setProduct_id(rs.getString(1));
		        	prodpojo.setProduct_name(rs.getString(2));
		        	prodpojo.setSuper_id(rs.getString(3));
		        	prodpojo.setImage_blob(rs.getBlob(4));
		        	prodpojo.setPrice(rs.getInt(5));
		        	prodpojo.setDelivery_status(rs.getString(6));
		        	prodpojo.setSubtotal(rs.getInt(7));
		        	prodpojo.setQuantity(rs.getInt(8));
		        	prodpojo.setDescription(rs.getString(9));
		        	plist.add(prodpojo);
		        	System.out.println("product name:"+prodpojo.getProduct_name());
		        }  
		        return plist; 
		        
		        }  
		    });
	}


}