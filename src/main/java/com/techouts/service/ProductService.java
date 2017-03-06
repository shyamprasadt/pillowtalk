package com.techouts.service;

import java.sql.Blob;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import com.techouts.pojo.ProductPojo;


public interface ProductService {

	List<ProductPojo> getServiceProductsList(String id);

	Blob getImage(List<ProductPojo> li,String prodid);

	

	ProductPojo getServiceProduct(List<ProductPojo> plist, String id);

	Map<String, ProductPojo> getServiceCartProductList(int qty,String cartpid, List<ProductPojo> plist, ConcurrentHashMap<String, ProductPojo> linkedHashMap);

	int getServiceBag(Map<String, ProductPojo> map);

	int getServiceTotal(Map<String, ProductPojo> map);

	Blob getCartImage(String pid,Map<String, ProductPojo> map);

	Map<String, ProductPojo> getdeletecartItem(String id,Map<String, ProductPojo> map);

	Map<String, ProductPojo> decreamentCartItem(String id,Map<String, ProductPojo> map);

	Map<String, ProductPojo> increamentCartItem(String id,Map<String, ProductPojo> map);

	Map<String, ProductPojo> updateCartItem(String id, String updatedValue,Map<String, ProductPojo> map);

	int getServiceSubTotal(Map<String, ProductPojo> map, String id);
}
