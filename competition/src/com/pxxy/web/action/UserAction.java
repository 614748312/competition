package com.pxxy.web.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.pxxy.entity.PageBean;
import com.pxxy.entity.User;
import com.pxxy.service.UserService;

import net.sf.json.JSONArray;

@ParentPackage("struts-default")
@Namespace("/")
@Controller("userAction") 
@Scope("prototype") 
public class UserAction extends ActionSupport implements ModelDriven<User> {

	private User user = new User();
	@Autowired 
	private UserService userService;
	private PageBean<User> pb;  
	private int currentPage=1; 
	private int pageSize = 9;
	@Action(value = "log", results = { @Result(name = "suc", location = "/index.jsp"),@Result(name = "login", location = "/index.jsp"
			+ "") })
	public String log() { 
		    User existUser = userService.login(user);
		  
		if (existUser == null) {
			return "login";
			
		}
		  ActionContext.getContext().getSession().put("tel",user.getTel());
		    System.out.println("aa");
			return "suc";

	}

	@Action(value = "reg", results = { @Result(name = "success", location = "/index.jsp"),
			@Result(name = "error", location = "/error.html") })
	public String reg() {
		try {
			userService.register(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";

	}

	@Action(value = "/admin/findAllUser",results={ @Result(name="success", location="/admin/user_query.jsp")})
	public String findAllUser() {
		pb=userService.findAllUser(currentPage,pageSize);
		this.setPb(pb);	
		return "success";
	}

//	@Action(value = "/admin/findAllUserForShow")
//	public String findAllUserForShow() {
//		try {
//			List<User> list = userService.findAllUser();
//			HttpServletResponse response = ServletActionContext.getResponse(); // 响应对象
//			response.setContentType("text/html;charset=UTF-8"); // 告知浏览器使用UTF-8编码
//			PrintWriter out = response.getWriter();
//			String json = JSONArray.fromObject(list).toString();
//			System.out.println(json);
//			out.write(json);
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		return null;
//
//	}

	@Action(value = "editUser", results = { @Result(name = "success", location = "/success.jsp") })
	public String editUser() {
		try {
			user = userService.findUserByTel(user.getTel());
			this.setUser(user);
			// ActionContext.getContext().getValueStack().push(category);
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html;charset=UTF-8");// 告知浏览器使用什么编码解析文本

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";

	}

	@Action(value = "updateUser", results = { @Result(name = "success", location = "/success.jsp") })

	public String updateUser() {
		try {
			userService.update(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";

	}

	@Action(value = "logout")
	public String logout() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		if (session.getAttribute("tel") != null) {
			session.removeAttribute("tel");
		}

		HttpServletResponse response = (HttpServletResponse) ServletActionContext.getResponse();
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		out.print("<script language=javascript>");
		out.print("top.location.href='" + request.getContextPath() + "/success.jsp'");
		out.print("</script>");

		return null;
	}

	@Action(value = "/admin/delUser", results = { @Result(name = "success",location="/admin/findAllUser",type = "redirect") })
	public String delUser() {
		try {
			userService.delUser(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	public void setUser(User user) {
		this.user = user;
	}

	public User getUser() {
		return user;
	}

	public User getModel() {

		return user;
	}

	public PageBean<User> getPb() {
		return pb;
	}

	public void setPb(PageBean<User> pb) {
		this.pb = pb;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
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
	
}
