package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import base.DBManager;
import beans.ItemDataBeans;

public class ItemDAO {
	/**
	 * データの挿入処理を行う。現在時刻は挿入直前に生成
	 *
	 * @param user
	 *            対応したデータを保持しているJavaBeans
	 * @throws SQLException
	 *             呼び出し元にcatchさせるためにスロー
	 */
	public static void insertItem(ItemDataBeans udb) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;

		try {
			con = DBManager.getConnection();
			st = con.prepareStatement("INSERT INTO m_item(name,detail,price,file_name) VALUES(?,?,?,?)");
			st.setString(1, udb.getName());
			st.setString(2, udb.getDetail());
			st.setInt(3, udb.getPrice());
			st.setString(4, udb.getFileName());
			st.executeUpdate();

			System.out.println("inserting user has been completed");
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	public static ArrayList<ItemDataBeans> getfavoriteItem(int userId) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();

			st = con.prepareStatement("SELECT * FROM m_item"
					+ " m_item INNER JOIN t_favorite"
					+ " ON t_favorite.item_id = m_item.id"
					+ " WHERE t_favorite.user_id = ?");
			st.setInt(1, userId);

			ResultSet rs = st.executeQuery();

			ArrayList<ItemDataBeans> favoriteitemList = new ArrayList<ItemDataBeans>();

			while (rs.next()) {
				ItemDataBeans item = new ItemDataBeans();
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setDetail(rs.getString("detail"));
				item.setPrice(rs.getInt("price"));
				item.setFileName(rs.getString("file_name"));
				favoriteitemList.add(item);
			}
			System.out.println("getAllItem completed");
			return favoriteitemList;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	public static ArrayList<ItemDataBeans> gethistroyItem(int userId) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();

			st = con.prepareStatement("SELECT * FROM m_item" +
					"					  m_item INNER JOIN t_buy_detail" +
					"					  ON t_buy_detail.item_id = m_item.id" +
					"					  INNER JOIN t_buy" +
					"					  ON t_buy.id = t_buy_detail.buy_id" +
					"					  WHERE t_buy.user_id = ?");
			st.setInt(1, userId);

			ResultSet rs = st.executeQuery();

			ArrayList<ItemDataBeans> histroyitemList = new ArrayList<ItemDataBeans>();

			while (rs.next()) {
				ItemDataBeans item = new ItemDataBeans();
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setDetail(rs.getString("detail"));
				item.setPrice(rs.getInt("price"));
				item.setFileName(rs.getString("file_name"));
				histroyitemList.add(item);
			}
			System.out.println("getAllItem completed");
			return histroyitemList;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	public static ArrayList<ItemDataBeans> getItemsByItemName(String searchWord, int pageNum, int pageMaxItemCount)
			throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			int startiItemNum = (pageNum - 1) * pageMaxItemCount;
			con = DBManager.getConnection();

			if (searchWord.length() == 0) {
				// 全検索
				//LIMITは問い合せ結果で取得する行数を制限するときに使用します。 このとき、取得する開始位置を
				//OFFSET（オフセット）といい、問い合せ結果の先頭から（0 からカウント）の位置付けを指定します。
				//なお、LIMIT 句と WHERE 句を一緒に指定した場合には、WHERE 句が優先されます。
				st = con.prepareStatement("SELECT * FROM m_item ORDER BY id ASC LIMIT ?,? ");
				st.setInt(1, startiItemNum);
				st.setInt(2, pageMaxItemCount);
			} else {
				// 商品名検索
				//st = con.prepareStatement("SELECT * FROM m_item WHERE name = ?  ORDER BY id ASC LIMIT ?,? ");
				st = con.prepareStatement("SELECT * FROM m_item WHERE name LIKE ?  ORDER BY id ASC LIMIT ?,? ");
				st.setString(1, "%" + searchWord + "%");
				st.setInt(2, startiItemNum);
				st.setInt(3, pageMaxItemCount);
			}

			ResultSet rs = st.executeQuery();
			ArrayList<ItemDataBeans> itemList = new ArrayList<ItemDataBeans>();

			while (rs.next()) {
				ItemDataBeans item = new ItemDataBeans();
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setDetail(rs.getString("detail"));
				item.setPrice(rs.getInt("price"));
				item.setFileName(rs.getString("file_name"));
				itemList.add(item);
			}
			System.out.println("get Items by itemName has been completed");
			return itemList;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	public static double getItemCount(String searchWord) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();
			st = con.prepareStatement("select count(*) as cnt from m_item where name like ?");
			st.setString(1, "%" + searchWord + "%");
			ResultSet rs = st.executeQuery();
			double coung = 0.0;
			while (rs.next()) {
				coung = Double.parseDouble(rs.getString("cnt"));
			}
			return coung;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	public static int getItemPriceByitemId(int itemId) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		// 戻り値用変数（商品価格）
		int itemPrice = 0;
		try {
			con = DBManager.getConnection();

			st = con.prepareStatement("SELECT price FROM m_item"
					+ " WHERE m_item.id = ?");
			st.setInt(1, itemId);

			ResultSet rs = st.executeQuery();
			if (!rs.next()) {
				// 商品価格が取得できなかった場合 !で改行してもnullだった場合はitemPriceをreturnする。
				return itemPrice;
			}

			itemPrice = rs.getInt("price");
			System.out.println("getAllItem completed");
			return itemPrice;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	public static ItemDataBeans selectItemDetailByitemId(int itemId) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;

		try {
			con = DBManager.getConnection();

			st = con.prepareStatement("SELECT * FROM m_item"
					+ " WHERE m_item.id = ?");
			st.setInt(1, itemId);

			ResultSet rs = st.executeQuery();
			ItemDataBeans item = new ItemDataBeans();

			if (rs.next()) {
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setDetail(rs.getString("detail"));
				item.setPrice(rs.getInt("price"));
				item.setFileName(rs.getString("file_name"));
				}

			System.out.println("getselectedItem completed");
			return item;
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