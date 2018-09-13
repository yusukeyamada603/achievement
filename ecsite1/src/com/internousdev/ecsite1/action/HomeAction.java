package com.internousdev.ecsite1.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite1.dao.BuyItemDAO;
import com.internousdev.ecsite1.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport implements SessionAware{

	public Map<String,Object>session;

	public String execute(){
	String result="login";

	if(session.containsKey("id")){
		BuyItemDAO buyItemDAO=new BuyItemDAO();
		BuyItemDTO buyItemDTO=buyItemDAO.getBuyItemInfo();
		session.put("id",buyItemDTO.getId());
		session.put("buyItem_name", buyItemDTO.getItemName());
		session.put("buyItem_price",buyItemDTO.getItemPrice());
		result=SUCCESS;
	}
	return result;

	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
