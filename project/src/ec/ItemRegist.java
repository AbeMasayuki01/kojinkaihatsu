package ec;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.ItemDataBeans;
import dao.ItemDAO;

/**
 * Servlet implementation class ItemRegist
 */
@WebServlet("/ItemRegist")
public class ItemRegist extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemRegist() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/ItemRegist.jsp");
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		try {
			String inputItemName = request.getParameter("item_name");
			String inputItemDetail = request.getParameter("item_detail");
			int inputItemPrice = Integer.parseInt(request.getParameter("item_price"));
			String inputFileName = request.getParameter("item_filename");

			ItemDataBeans udb = new ItemDataBeans();
			udb.setName(inputItemName);
			udb.setDetail(inputItemDetail);
			udb.setPrice(inputItemPrice);
			udb.setFileName(inputFileName);

			String validationMessage = "";

			ItemDAO.insertItem(udb);

//			// 入力されているパスワードが確認用と等しいか
//			if (!inputPassword.equals(inputConfirmPassword)) {
//				validationMessage += "入力されているパスワードと確認用パスワードが違います<br>";
//			}
//
//			// ログインIDの入力規則チェック 英数字 ハイフン アンダースコアのみ入力可能
//			if (!.isLoginIdValidation(udb.getLoginId())) {
//				validationMessage += "半角英数とハイフン、アンダースコアのみ入力できます";
//			}
//			// loginIdの重複をチェック
//			if (UserDAO.isOverlapLoginId(udb.getLoginId(), 0)) {
//				validationMessage += "ほかのユーザーが使用中のログインIDです";
//			}
//
//			// バリデーションエラーメッセージがないなら確認画面へ
//			if (validationMessage.length() == 0) {
				request.setAttribute("udb", udb);
				request.getRequestDispatcher("/WEB-INF/jsp/ItemRegist.jsp").forward(request, response);
//			} else {
//				session.setAttribute("udb", udb);
//				session.setAttribute("validationMessage", validationMessage);
//				response.sendRedirect("Regist");
//			}

		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("ItemRegist");
		}
	}
}
