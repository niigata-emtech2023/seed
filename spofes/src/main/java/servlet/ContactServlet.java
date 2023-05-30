package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.ContactDAO;
import model.entity.SpoFesBean;

/**
 * Servlet implementation class ContactServlet
 */
@WebServlet("/contact-servlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ContactServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// リクエストオブジェクトのエンコーディング方式の指定
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		request.getAttribute("spofesList");
		// リクエストパラメータの取得
		int team_id = Integer.parseInt(request.getParameter("teamId"));
		int task_id = Integer.parseInt(request.getParameter("taskId"));
		int point_add = Integer.parseInt(request.getParameter("pointAdd"));
		int point_sub = Integer.parseInt(request.getParameter("pointSub"));


		SpoFesBean spofes = new SpoFesBean();
		spofes.setTeamId(team_id);
		spofes.setTaskId(task_id);
		spofes.setPointAdd(point_add);
		spofes.setPointSub(point_sub);

		// DAOの生成
		ContactDAO dao = new ContactDAO();

		int count = 0;	// 処理件数

		try {
			// DAOの利用
			count = dao.checkTask(spofes);

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		// リクエストスコープへの属性の設定
		request.setAttribute("count", count);
		request.setAttribute("spofes", spofes);

		// リクエストの転送
		RequestDispatcher rd = request.getRequestDispatcher("contactresult.jsp");
		rd.forward(request, response);


	}
}
