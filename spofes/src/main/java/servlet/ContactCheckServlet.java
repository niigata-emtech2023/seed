package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.ContactDAO;
import model.entity.SpoFesBean;

/**
 * Servlet implementation class ContactCheckServlet
 */
@WebServlet("/contact-check-servlet")
public class ContactCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ContactCheckServlet() {
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
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");	
		HttpSession session = request.getSession();
		String team_name = request.getParameter("team_name");

		String[] check = null;
		for(int i=0;i<15;i++){
			check[i]=request.getParameter("check"+(i+1));
		}

		String comment_id = request.getParameter("comment_id");
		String comment = request.getParameter("comment");

		session.setAttribute("team_name", team_name);
		session.setAttribute("comment_id", comment_id);
		session.setAttribute("comment", comment);

		ContactDAO dao = new ContactDAO();
		int team_id = -1;
		try {
			team_id = dao.searchTeamId(team_name);
		} catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		

		SpoFesBean spofesList = new SpoFesBean();
		for (int i = 1; i <= 15; i++) {
			spofesList.setTeamId(team_id);
			spofesList.setTaskId(i);
			if (request.getParameter("check" + i).equals("true")) {
				spofesList.setPointAdd(1);
				spofesList.setPointSub(0);
			}else{
				spofesList.setPointAdd(0);
				spofesList.setPointSub(1);
			}
		}
		request.setAttribute("spofesList",spofesList);
	}
}