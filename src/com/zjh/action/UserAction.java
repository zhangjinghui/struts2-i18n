package com.zjh.action;

import java.util.Arrays;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	private Date date;

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String execute() throws Exception {
		date = new Date();

		// 1. 在 Action 中访问国际化资源文件的 value 值
		String username = getText("username");
		System.out.println("用户名："+username);

		// 2. 带占位符的
		String time = getText("time", Arrays.asList(date));
		System.out.println("带占位符的时间："+time);

		return SUCCESS;
	}
}
