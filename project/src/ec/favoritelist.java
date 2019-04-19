package ec;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.FavoriteDateBeans;
import beans.ItemDataBeans;
import beans.UserDataBeans;
import dao.FavariteDAO;
import dao.ItemDAO;

/**
 * Servlet implementation class favoritelist
 */
@WebServlet("/favoritelist")
public class favoritelist extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public favoritelist() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserDataBeans userInfo = (UserDataBeans) session.getAttribute("userInfo");

		try {
			int userId = userInfo.getId();

			ArrayList<ItemDataBeans> favoriteitemList = ItemDAO.getfavoriteItem(userId);
			request.setAttribute("favoriteitemList", favoriteitemList);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/favoritelist.jsp");
			dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		UserDataBeans userInfo = (UserDataBeans) session.getAttribute("userInfo");
		String searchword = request.getParameter("search_word");

		try {
			int userId = userInfo.getId();
			int itemId = Integer.parseInt(request.getParameter("item_id"));

			FavoriteDateBeans fdb = new FavoriteDateBeans();
			fdb.setUserid(userId);
			fdb.setItemid(itemId);

			FavariteDAO.insertfavoriteItemByitemId(fdb);
			response.sendRedirect("Serchresult?search_word=" + searchword);

//			ArrayList<ItemDataBeans> favoriteitem = ItemDAO.getfavoriteItem(userId);
//			session.setAttribute("favoriteitem", favoriteitem);

		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");

		}

	}
}
