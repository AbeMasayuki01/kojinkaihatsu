package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import base.DBManager;
import beans.FavoriteDateBeans;

public class FavariteDAO {

	public static void insertfavoriteItemByitemId(FavoriteDateBeans fdb) throws SQLException {

		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();
			st = con.prepareStatement("INSERT INTO t_favorite(user_id,item_id) VALUES(?,?)");
			st.setInt(1, fdb.getUserid());
			st.setInt(2, fdb.getItemid());
			st.executeUpdate();

			System.out.println("inserting favoriteitem has been completed");


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
