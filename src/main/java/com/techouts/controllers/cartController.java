package com.techouts.controllers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.techouts.pojo.ProductPojo;
import com.techouts.service.ProductService;



@Controller
public class cartController {

	@Autowired
	private ProductService prodService;

	/**
	 * 
	 * @param cartpid
	 * @param qty
	 * @param session
	 * @param req
	 * @return cart.jsp adding products to cart
	 */
	@RequestMapping(value = "/addtocartProductsList")
	@ResponseBody
	public String addcartProductsList(@RequestParam("cartP_id") String cartpid,
			@RequestParam("p_qty") String qty, HttpSession session,
			HttpServletRequest req) {

		System.out.println("add to cart 1");
		Integer quantity = Integer.parseInt(qty);

		ServletContext context = session.getServletContext();
		HttpSession s = req.getSession();

		int cartBag = 0, cartTotal = 0;

		@SuppressWarnings("unchecked")
		List<ProductPojo> plist = (List<ProductPojo>) context
				.getAttribute("productsList");
		System.out.println("cart product id " + cartpid);

		@SuppressWarnings("unchecked")
		Map<String, ProductPojo> map = (Map<String, ProductPojo>) s
				.getAttribute("cartMap");
		System.out.println("map value" + map);

		if (map == null) {
			map = prodService.getServiceCartProductList(quantity, cartpid,
					plist, new ConcurrentHashMap<String, ProductPojo>());
		}// end of if

		else {
			map = prodService.getServiceCartProductList(quantity, cartpid,
					plist, (ConcurrentHashMap<String, ProductPojo>) map);
		}// end of else

		cartBag = prodService.getServiceBag(map);
		cartTotal = prodService.getServiceTotal(map);
		session.setAttribute("cartMapBag", cartBag);
		session.setAttribute("cartMapTotal", cartTotal);
		session.setAttribute("cartMap", map);

		return Integer.toString(cartBag);
	}

	@RequestMapping(value = "/viewcart")
	public String viewcart() {
		return "cart";
	}

	@RequestMapping(value = "/deletecartItem")
	@ResponseBody
	String deletecartItem(@RequestParam("pid") String id, HttpSession s) {

		System.out.println("delete controller 1");
		@SuppressWarnings("unchecked")
		Map<String, ProductPojo> map = (Map<String, ProductPojo>) s
				.getAttribute("cartMap");
		map = prodService.getdeletecartItem(id, map);

		int cartBag = (Integer) s.getAttribute("cartMapBag");
		int cartTotal = (Integer) s.getAttribute("cartMapTotal");

		cartBag = prodService.getServiceBag(map);
		cartTotal = prodService.getServiceTotal(map);

		s.setAttribute("cartMapBag", cartBag);
		s.setAttribute("cartMapTotal", cartTotal);
		s.setAttribute("cartMap", map);
		System.out.println("delete controller 2");
		return Integer.toString(cartBag) + " " + Integer.toString(cartTotal);
	}

//	/*
//	 * @RequestMapping(value="/decreamentCartItem") String
//	 * decreamentCartItem(@RequestParam("pid") String id,HttpSession s){
//	 * 
//	 * @SuppressWarnings("unchecked") Map<String, ProductPojo> map=(Map<String,
//	 * ProductPojo>) s.getAttribute("cartMap");
//	 * map=prodService.decreamentCartItem(id,map);
//	 * 
//	 * int cartBag=(Integer) s.getAttribute("cartMapBag"); int
//	 * cartTotal=(Integer) s.getAttribute("cartMapTotal");
//	 * 
//	 * cartBag=prodService.getServiceBag(map);
//	 * cartTotal=prodService.getServiceTotal(map);
//	 * 
//	 * s.setAttribute("cartMapBag", cartBag); s.setAttribute("cartMapTotal",
//	 * cartTotal); s.setAttribute("cartMap", map);
//	 * 
//	 * return "cart"; }
//	 */
//
//	/*
//	 * @RequestMapping(value="/increamentCartItem") String
//	 * increamentCartItem(@RequestParam("pid") String id,HttpSession s){
//	 * 
//	 * @SuppressWarnings("unchecked") Map<String, ProductPojo> map=(Map<String,
//	 * ProductPojo>) s.getAttribute("cartMap");
//	 * map=prodService.increamentCartItem(id,map);
//	 * 
//	 * int cartBag=(Integer) s.getAttribute("cartMapBag"); int
//	 * cartTotal=(Integer) s.getAttribute("cartMapTotal");
//	 * 
//	 * cartBag=prodService.getServiceBag(map);
//	 * cartTotal=prodService.getServiceTotal(map);
//	 * 
//	 * s.setAttribute("cartMapBag", cartBag); s.setAttribute("cartMapTotal",
//	 * cartTotal); s.setAttribute("cartMap", map);
//	 * 
//	 * return "cart"; }
//	 */

	@RequestMapping(value = "/updateCartItem")
	@ResponseBody
	String updateCartItem(@RequestParam("p_id") String id,
			@RequestParam("updatedQuantity") String updatedValue, HttpSession s) {

		@SuppressWarnings("unchecked")
		Map<String, ProductPojo> map = (Map<String, ProductPojo>) s
				.getAttribute("cartMap");
		map = prodService.updateCartItem(id, updatedValue, map);

		int cartBag = (Integer) s.getAttribute("cartMapBag");
		int cartTotal = (Integer) s.getAttribute("cartMapTotal");

		int subTotal = prodService.getServiceSubTotal(map, id);
		cartTotal = prodService.getServiceTotal(map);
		cartBag = prodService.getServiceBag(map);

		s.setAttribute("cartMapBag", cartBag);
		s.setAttribute("cartMapTotal", cartTotal);
		s.setAttribute("cartMap", map);

		return Integer.toString(cartBag) + " " + Integer.toString(subTotal)
				+ " " + Integer.toString(cartTotal);
	}

	@RequestMapping(value = "/getCartImageFilter")
	public void getCartImageFilter(@RequestParam("img_id") String pid,
			HttpServletRequest req, HttpServletResponse res) {
		HttpSession s = req.getSession();
		System.out.println(" cart image controller");

		@SuppressWarnings("unchecked")
		Map<String, ProductPojo> map = (Map<String, ProductPojo>) s
				.getAttribute("cartMap");

		Blob img = prodService.getCartImage(pid, map);
		try {
			ServletOutputStream out = res.getOutputStream();
			InputStream io = img.getBinaryStream();
			long length = img.length();
			int bufferSize = 1024;
			byte[] buffer = new byte[bufferSize];
			res.setContentType("image/jpg");
			while ((length = io.read(buffer)) != -1) {
				out.write(buffer, 0, (int) length);
			}
			io.close();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

		catch (SQLException e) {
			e.printStackTrace();
		}

	}

}