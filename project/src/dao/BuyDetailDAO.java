package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import base.DBManager;
import beans.BuyDetailDataBeans;

public class BuyDetailDAO {

	public static void insertBuyDetail(BuyDetailDataBeans bddb) throws SQLException {

		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();
			st = con.prepareStatement(

					"INSERT INTO t_buy_detail(buy_id,item_id) VALUES(?,?)");
			st.setInt(1, bddb.getBuyId());
			st.setInt(2, bddb.getItemId());
			st.executeUpdate();
			System.out.println("inserting BuyDetail has been completed");

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
