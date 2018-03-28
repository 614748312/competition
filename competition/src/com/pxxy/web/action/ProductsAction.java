package com.pxxy.web.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.pxxy.entity.PageBean;
import com.pxxy.entity.Products;
import com.pxxy.service.ProductsService;

@ParentPackage("struts-default")
@Namespace("/")
@Controller("productsAction")
@Scope("prototype")
public class ProductsAction extends ActionSupport implements ModelDriven<Products> {
	private Products products = new Products();
	@Resource(name = "productsService")
	private ProductsService productsService;
	private List<Products> list = null;
	private PageBean<Products> pb; 
	private int currentPage=1; 
	private int pageSize = 3;
	
	public PageBean<Products> getPb() {
		return pb;
	}
	public void setPb(PageBean<Products> pb) {
		this.pb = pb;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	@Action(value = "findFourProducts", results = { @Result(name = "success", location = "/index.jsp") })
	public String findFourProducts() {
		try {
			HttpServletRequest request = ServletActionContext.getRequest();
			list = productsService.findFourProducts();
			request.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	@Action(value = "/admin/findAllProducts", results = { @Result(name = "success", location = "/admin/works/query.jsp") })
	public String findAllProducts() {
		pb=productsService.findAllProducts(currentPage,pageSize);
		this.setPb(pb);	
		return "success";
	}
	/*@Action(value = "findAllProductsForShow")
	public String findAllProductsForShow() {
		try {
			List<Products> list = productsService.findAllProducts();
			HttpServletResponse response = ServletActionContext.getResponse(); // 响应对象
			response.setContentType("text/html;charset=UTF-8"); // 告知浏览器使用UTF-8编码
			PrintWriter out = response.getWriter();
			String json = JSONArray.fromObject(list).toString();
			System.out.println(json);
			out.write(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}*/
	@Action(value = "/admin/delProducts")
	public void delProducts(){
		try {
			productsService.delProducts(products);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Action(value = "/admin/editProducts", results = { @Result(name = "success", location = "/admin/works/edit.jsp") })
	public String editProducts() {
		try {
			products = productsService.findProductsById(products.getProducts_id());
			this.setProducts(products);
			// ActionContext.getContext().getValueStack().push(category);
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html;charset=UTF-8");// 告知浏览器使用什么编码解析文本
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	@Action(value = "updateProducts", results = { @Result(name = "success", location = "/success.jsp") })
	public String updateProducts() {
		try {
			productsService.updateProducts(products);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	@Action(value = "/admin/addProducts")
	public void addProducts() {
		try {
			productsService.addProducts(products);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Action(value = "findAllProductsByMatch_id", results = { @Result(name = "success", location = "/success.jsp") })
	public String findAllProductsByMatch_id() {
		try {
			list = productsService.findAllProductsByMatch_id(products.getMatch().getMatch_id());
			this.setList(list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	@Override
	public Products getModel() {
		
		return products;
	}
	public Products getProducts() {
		return products;
	}
	public void setProducts(Products products) {
		this.products = products;
	}
	public List<Products> getList() {
		return list;
	}
	public void setList(List<Products> list) {
		this.list = list;
	}
	

}
