package com.tarena.web.action.user;

import org.apache.catalina.Globals;

import com.tarena.web.action.BaseAction;

public class ToRegistAction extends BaseAction{
public String execute(){
		
		System.out.println("��ǰ������token:"+session.get("struts.token"));
		
		if(request.getSession().getAttribute("struts.token")!= null)
		System.out.println("request��"+request.getSession().getAttribute("struts.token"));
		return "register_form";
	}
}
