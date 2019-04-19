package ec;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.UserDataBeans;
import dao.UserDAO;

/**
 * Servlet implementation class Regist
 */
@WebServlet("/Regist")
public class Regist extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Regist() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/regist.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		try {
			String inputUserName = request.getParameter("user_name");
			String inputUserAddress = request.getParameter("user_address");
			String inputUserMail = request.getParameter("user_mail");
			String inputLoginId = request.getParameter("login_id");
			String inputPassword = request.getParameter("password");
			String inputConfirmPassword = request.getParameter("confirm_password");

			UserDataBeans udb = new UserDataBeans();
			udb.setName(inputUserName);
			udb.setAddress(inputUserAddress);
			udb.setMail(inputUserMail);
			udb.setLoginId(inputLoginId);
			udb.setPassword(inputPassword);

			String validationMessage = "";

			int id = UserDAO.insertUser(udb);
			udb.setId(id);

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
			session.setAttribute("userInfo", udb);
			response.sendRedirect("Home");
			//			} else {
			//				session.setAttribute("udb", udb);
			//				session.setAttribute("validationMessage", validationMessage);
			//				response.sendRedirect("Regist");
			//			}

		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Regist");
		}
	}
}
