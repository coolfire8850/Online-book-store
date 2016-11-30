package com.tarena.web.action.user;

import org.apache.catalina.Globals;

import com.tarena.web.action.BaseAction;

public class ToRegistAction extends BaseAction{
public String execute(){
		
		System.out.println("当前服务器token:"+session.get("struts.token"));
		
		if(request.getSession().getAttribute("struts.token")!= null)
		System.out.println("request后："+request.getSession().getAttribute("struts.token"));
		return "register_form";
	}
}
