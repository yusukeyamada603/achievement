package com.internousdev.ecsite1.dto;

public class SelectBuyItemDTO {

	 private String item_name;
	 private String item_price;
	 private String stock;



	public String getStock() {
		return stock;
	}

	public void setStock(String stock) {
		this.stock = stock;
	}

	public String getItem_price() {
		return item_price;
	}

	public void setItem_price(String item_price) {
		this.item_price = item_price;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String qtype) {
		this.item_name = qtype;
	}
}
