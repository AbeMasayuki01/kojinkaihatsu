package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;

import base.DBManager;
import beans.BuyDataBeans;
import beans.ItemDataBeans;

public class BuyDAO {

	public static int insertBuy(BuyDataBeans bdb) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		int autoIncKey = -1;
		try {
			con = DBManager.getConnection();
			st = con.prepareStatement(
					"INSERT INTO t_buy(user_id,total_price,create_date) VALUES(?,?,?)",
					Statement.RETURN_GENERATED_KEYS);
			st.setInt(1, bdb.getUserId());
			st.setInt(2, bdb.getTotalPrice());
			st.setTimestamp(3, new Timestamp(System.currentTimeMillis()));
			st.executeUpdate();

			ResultSet rs = st.getGeneratedKeys();
			if (rs.next()) {
				autoIncKey = rs.getInt(1);
			}
			System.out.println("inserting buy-datas has been completed");

			return autoIncKey;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	public static ArrayList<ItemDataBeans> getBuyDataBeansByBuyId(int userId) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();

			st = con.prepareStatement(
					"SELECT * FROM m_item"
							+ " JOIN t_buy_detail"
							+ " ON m_item.id = t_buy_detail.item_id"
							+ " JOIN t_buy"
							+ " ON t_buy_detail.buy_id = t_buy.id"
							+ " WHERE t_buy.user_id = ?");
			st.setInt(1, userId);
			ResultSet rs = st.executeQuery();
			ArrayList<ItemDataBeans> idtlist = new ArrayList<ItemDataBeans>();

			while (rs.next()) {
				ItemDataBeans idt = new ItemDataBeans();
				idt.setId(rs.getInt("id"));
				idt.setName(rs.getString("name"));
				idt.setPrice(rs.getInt("price"));
				idt.setDetail(rs.getString("detail"));
				idt.setFileName(rs.getString("file_name"));
				idtlist.add(idt);

			}
			return idtlist;

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}
}
