package com.internousdev.ecsite1.action;

import com.internousdev.ecsite1.dao.SelectBuyItemDAO;
import com.opensymphony.xwork2.ActionSupport;

public class SelectBuyItemAction extends ActionSupport{


    private String item_name;
    private String item_price;
    private String stock;

    public String execute() {
    	String ret=ERROR;
    SelectBuyItemDAO dao=new SelectBuyItemDAO();
    int count= dao.insert(item_name,item_price,stock);
    if(count > 0){
              ret=SUCCESS;
              }
    return ret;
    }

public String getItem_name() {
	return item_name;
}
public void setItem_name(String item_name) {
	this.item_name = item_name;
}

public String getItem_price() {
	return item_price;
}

public void setItem_price(String item_price) {
	this.item_price = item_price;
}

public String getStock() {
	return stock;
}

public void setStock(String stock) {
	this.stock = stock;
}

 }
