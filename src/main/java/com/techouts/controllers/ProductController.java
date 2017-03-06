package com.techouts.controllers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.techouts.pojo.ProductPojo;
import com.techouts.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private	ProductService prodService;
	
	@RequestMapping(value="/getProductsList")
	ModelAndView getProductsList(@RequestParam("pid") String id,HttpSession session){
		System.out.println("product id= "+id);
		List<ProductPojo> pslist=prodService.getServiceProductsList(id);
		
		ServletContext context=session.getServletContext();
		context.setAttribute("productsList", pslist);
		System.out.println(" product controller list"+pslist);
		return new ModelAndView("productsListpage","productsList",pslist);
	}
	
	
	
	@RequestMapping(value="/getImageFilter")
	Blob getImageFilter(@RequestParam("product_id") String prodid,HttpSession session,HttpServletResponse res){
		System.out.println(" filter controller");
		
		ServletContext context=session.getServletContext();
		@SuppressWarnings("unchecked")
		List<ProductPojo> plist=(List<ProductPojo>) context.getAttribute("productsList");
		
		Blob img=prodService.getImage(plist,prodid);
		
		try {
			ServletOutputStream out=res.getOutputStream();
			InputStream io=img.getBinaryStream();
			long length=img.length();
			int bufferSize=1024;
			byte[] buffer=new byte[bufferSize];
			res.setContentType("image/jpg");
			while((length=io.read(buffer))!=-1){
				out.write(buffer, 0, (int)length);
			}
				io.close();
				out.close();
		}
		catch (IOException e) {
			e.printStackTrace();
		} 
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		return img;
	}
	
	
	@RequestMapping(value="/getProduct")
	String getProduct(@RequestParam("p_id") String id,HttpSession session){
		ServletContext context=session.getServletContext();
		@SuppressWarnings("unchecked")
		List<ProductPojo> plist=(List<ProductPojo>) context.getAttribute("productsList");
		System.out.println("p id = "+id);
		ProductPojo p=prodService.getServiceProduct(plist,id);
		System.out.println("product name"+p.getProduct_name());
		context.setAttribute("product", p);
		return "product";
	}
	
}