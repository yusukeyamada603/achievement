package com.internousdev.ecsite1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.eciste1.util.DBConnector;


public class SelectBuyItemDAO {

	public int insert(String item_name,String item_price,String stock) {
		int ret = 0;
		DBConnector db = new DBConnector(); Connection con = db.getConnection();
		String sql = "insert into select_item values(?,?,?)";
		try {
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, item_name);
		ps.setString(2,item_price);
		ps.setString(3, stock);

		int i = ps.executeUpdate(); if (i > 0) {
		System.out.println(i + "件登録されました");
		ret = i; }
		} catch (SQLException e) { e.printStackTrace();
		} try {
		con.close();
		} catch (SQLException e) {
		                e.printStackTrace();

		}
		return ret; }
		}