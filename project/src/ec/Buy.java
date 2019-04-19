package ec;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.BuyDataBeans;
import beans.BuyDetailDataBeans;
import beans.UserDataBeans;
import dao.BuyDAO;
import dao.BuyDetailDAO;
import dao.ItemDAO;

/**
 * Servlet implementation class Buy
 */
@WebServlet("/Buy")
public class Buy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Buy() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserDataBeans userInfo = (UserDataBeans) session.getAttribute("userInfo");

		try {
			int userId = userInfo.getId();
			String itemId = request.getParameter("item_id");
			int itemID = Integer.parseInt(itemId);
			String searchword = request.getParameter("search_word");


			int itemPrice = ItemDAO.getItemPriceByitemId(itemID);
			BuyDataBeans bdb = new BuyDataBeans();
			bdb.setUserId(userId);
			bdb.setTotalPrice(itemPrice);


			// 購入テーブルに購入商品情報を登録(loginId、price、今の時間)
			// インクリメントしたbuy_idを取得するように組み込み
			int buyId = BuyDAO.insertBuy(bdb);

			// 購入詳細テーブルに購入情報を登録(buyId、itemId)
			BuyDetailDataBeans bddb = new BuyDetailDataBeans();
			bddb.setBuyId(buyId);
			bddb.setItemId(itemID);

			BuyDetailDAO.insertBuyDetail(bddb);

			// 成功あらーとをリクエストに格納

//			response.sendRedirect("Serchresult?search_word="+searchword);
			response.sendRedirect("Mypage#histroy");
			//ユーザーID（⇨セッションから）とアイテムID（⇨クリックしたもの、てことはformか？）からbuytableにインサートして終わり、
			//変数をきめるまでの仕事


		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}


	}
}
