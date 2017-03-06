package com.techouts.service.impl;

import java.sql.Blob;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.beans.factory.annotation.Autowired;

import com.techouts.dao.impl.DefaultDao;
import com.techouts.pojo.ProductPojo;
import com.techouts.service.ProductService;

public class DefaultProductService implements ProductService{

			@Autowired
	private DefaultDao dao;

	public List<ProductPojo> getServiceProductsList(String id) {		
		
		List<ProductPojo> plist=dao.getDaoProductList(id);
		return plist;
	}

	public Blob getImage(List<ProductPojo> plist, String prodid) {
		
		Iterator<ProductPojo> pit=plist.iterator();
		Blob img=null;
		while (pit.hasNext()) {
			ProductPojo productPojo = (ProductPojo) pit.next();
			System.out.println("get img metod 1");
				if(prodid.equals(productPojo.getProduct_id())){
					System.out.println("service product list"+prodid+" "+productPojo.getProduct_id());
					
					img=productPojo.getImage_blob();
					break;
				}
				System.out.println("get img metod 2");
		}
		return img;
	}

	

	public ProductPojo getServiceProduct(List<ProductPojo> plist, String id) {
		
		
		Iterator<ProductPojo> pit=plist.iterator();
		ProductPojo p=null;
		
		while (pit.hasNext()) {
			p = (ProductPojo) pit.next();
			if(id.equals(p.getProduct_id())){
				break;
			}
		}
		
		return p;
		
	}

	public Map<String, ProductPojo> getServiceCartProductList(int quantity,String cartpid, 
				List<ProductPojo> plist,ConcurrentHashMap<String, ProductPojo> map) {
		
		ProductPojo p=getServiceProduct(plist, cartpid);
		System.out.println(" product id for cart  = "+p.getProduct_name());
		
		if(map.isEmpty()){
			System.out.println("caling first time");
			p.setQuantity(quantity);
			p.setSubtotal(quantity*p.getPrice());
			map.put(cartpid, p);
			}
		
		else{
			boolean loop=true;
			for(Map.Entry<String,ProductPojo> cartProduct:map.entrySet()){
				if( cartProduct.getKey().equals(cartpid) ){
					System.out.println("caling for same product");
						ProductPojo value=cartProduct.getValue();
						System.out.println("qty before= "+value.getQuantity());
						value.setQuantity(value.getQuantity()+quantity);
						value.setSubtotal(value.getQuantity()*value.getPrice());
						map.put(cartProduct.getKey(), value);
						System.out.println("qty after= "+value.getQuantity());
						loop=false;
						break;
					}
			
			}
			if(loop){
			System.out.println("caling for diff product");
			p.setQuantity(quantity);
			p.setSubtotal(quantity*p.getPrice());
			map.put(cartpid, p);
			}
		
		}
		System.out.println(map);
		return map;
	}

	public int getServiceBag(Map<String, ProductPojo> map) {
		int bag=0;
		
		for(Map.Entry<String,ProductPojo> m: map.entrySet()){
			ProductPojo p=m.getValue();
			bag=bag+p.getQuantity();	
		}
		
		return bag;
	}

	public int getServiceTotal(Map<String, ProductPojo> map) {
		int total=0;
		for(Map.Entry<String,ProductPojo> m:map.entrySet()){
			ProductPojo p=m.getValue();
			total=total+p.getSubtotal();
		}
		return total;
	}

	public Blob getCartImage(String pid, Map<String, ProductPojo> map) {
		System.out.println(" getcartImg");
		Blob img=null;
		for(Map.Entry<String, ProductPojo> m:map.entrySet()){
			ProductPojo p=m.getValue();
			if(pid.equals(p.getProduct_id()) ){
				img=p.getImage_blob();
				break;
			}
		}

		return img;
	}

	public Map<String, ProductPojo> getdeletecartItem(String id,Map<String, ProductPojo> map) {
		for(Map.Entry<String,ProductPojo> cartProduct:map.entrySet()){
			ProductPojo p=cartProduct.getValue();
			if(id.equals(p.getProduct_id()) ){
				map.remove(id, p);
				break;
			}
			
		}
	
		return map;
	}

	public Map<String, ProductPojo> decreamentCartItem(String id,Map<String, ProductPojo> map) {
		
		for(Map.Entry<String, ProductPojo> cartMap:map.entrySet()){
			ProductPojo p=cartMap.getValue();
			if(id.equals(p.getProduct_id())){
				if(p.getQuantity()>1){
					p.setQuantity(p.getQuantity()-1);
					p.setSubtotal(p.getQuantity()*p.getPrice());
					break;
				}
				else{
					map.remove(id,p);
					break;
				}
			}
		}
		
		return map;
	}

	public Map<String, ProductPojo> increamentCartItem(String id,Map<String, ProductPojo> map) {
		
		for(Map.Entry<String, ProductPojo> cartMap:map.entrySet()){			
			ProductPojo p=cartMap.getValue();
			
			if(id.equals(p.getProduct_id())){
				p.setQuantity(p.getQuantity()+1 );
				p.setSubtotal(p.getQuantity()*p.getPrice());
				break;
			}
		}
			
		return map;
	}

	public Map<String, ProductPojo> updateCartItem(String id,String updatedValue, Map<String, ProductPojo> map) {
		Integer uv=Integer.parseInt(updatedValue);
		for(Map.Entry<String, ProductPojo> cartMap:map.entrySet()){
			ProductPojo p=cartMap.getValue();
			if(id.equals(p.getProduct_id())){
				p.setQuantity(uv);
				p.setSubtotal(p.getQuantity()*p.getPrice());
				break;
			}
		}
			
		
		return map;
	}

	public int getServiceSubTotal(Map<String, ProductPojo> map, String id) {
		int subTotal=0;
		for(Map.Entry<String,ProductPojo> cartProduct:map.entrySet()){
			ProductPojo p=cartProduct.getValue();
			if(id.equals(p.getProduct_id())){
				subTotal=p.getSubtotal();
				break;
			}
		}
		return subTotal;
	}

	

	

	

}
