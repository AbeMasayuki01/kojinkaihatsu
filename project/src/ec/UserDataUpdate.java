package ec;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.UserDataBeans;
import dao.UserDAO;

/**
 * Servlet implementation class Update
 */
@WebServlet("/UserDataUpdate")
public class UserDataUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserDataUpdate() {
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

		request.setCharacterEncoding("UTF-8");

		//セッション開始
		HttpSession session = request.getSession();
		UserDataBeans userInfo = (UserDataBeans) session.getAttribute("userInfo");

		try {
			//エラーメッセージを格納する変数
			String validationMessage = "";

			//入力フォームから受け取った値をBeans偽っと
			UserDataBeans udb = new UserDataBeans();
			String name = request.getParameter("name");
			String loginId = request.getParameter("login_id");
			String mail = request.getParameter("mail");
			String address = request.getParameter("address");
			int userId = userInfo.getId();

			udb.setName(name);
			udb.setLoginId(loginId);
			udb.setMail(mail);
			udb.setAddress(address);
			udb.setId(userId);

			UserDAO.updateUser(udb);


			//ログインIDの入力規則チェック 英数字 ハイフン アンダースコアのみ入力可能
			if (udb.getLoginId() == null) {
				validationMessage = "ID入れなさい";
			}
			//loginIdの重複をチェック
			if (UserDAO.isOverlapLoginId(udb.getLoginId(), userInfo.getId())) {
				validationMessage = "ほかのユーザーが使用中のログインIDです";
			}
			if (udb.getMail() == null || "".equals(udb.getMail()) ) {
				validationMessage = "メアドを入れなさい";
			}
			if (udb.getAddress() == null) {
				validationMessage = "住所を教えなさい";
			}

			//バリデーションエラーメッセージがないなら確認画面へ
			if (validationMessage.length() == 0) {
				session.setAttribute("userInfo", udb);
				//確認画面へ
				request.setAttribute("udb", udb);
				session.setAttribute("successMsg", "プロフィールの更新をしました！");
				response.sendRedirect("Mypage");
			} else {
				//セッションにエラーメッセージを持たせてユーザー画面へ
				session.setAttribute("validationMessage", validationMessage);
				response.sendRedirect("Mypage");
			}

		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}

}
