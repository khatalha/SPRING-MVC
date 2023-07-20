package com.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.product.dao.ProductDao;
import com.product.model.Product;


@Controller
public class PorductController {
	
	@Autowired
	private ProductDao productDao;
	
	
	@RequestMapping("/")
	public String home(Model m) {
		
		List<Product> products = productDao.getProducts();
		m.addAttribute("product", products);
		return "index";
	}
	
	
	@RequestMapping("/addproduct")
	public String AddProduct(Model m) {
		m.addAttribute("title", "add product");
		return "add-product";
	}
	
	@RequestMapping(value = "/handler-product" , method = RequestMethod.POST)
	public RedirectView AddData(@ModelAttribute Product product,HttpServletRequest req) {
		System.out.println(product);
		productDao.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(req.getContextPath()+"/");
		return redirectView;
	}
	
	@RequestMapping("/delete/{pid}")
	public RedirectView deleteproduct(@PathVariable("pid") int pid ,HttpServletRequest req) {
		this.productDao.deleteProduct(pid);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(req.getContextPath()+"/");
		return redirectView;
	}
	
	@RequestMapping("/update/{pid}")
	public String updateProduct(@PathVariable("pid") int pid , Model m) {
		
		Product product = this.productDao.getProduct(pid);
		m.addAttribute("product", product);
		
		return "upadte-form";
	}

}
