package com.tarena.web.action.main;

import com.tarena.web.action.BaseAction;

public class MainAction extends BaseAction {
	public String execute(){
		
		System.out.println("MainAction token:"+session.get("struts.token"));
		return "main";
	}

}
