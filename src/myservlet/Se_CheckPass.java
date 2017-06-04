package myservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import myclass.Sqlconn;

/**
 * Servlet implementation class Se_CheckPass
 */
@WebServlet("/Se_CheckPass")
public class Se_CheckPass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Se_CheckPass() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("username");
		String pass = request.getParameter("password");
		PrintWriter pw = response.getWriter();
		String passmat = "";
		try {
			Connection conn = new Sqlconn().myconn();
			PreparedStatement pstm = conn.prepareStatement("select password from users where userName=?");
			pstm.setString(1, name);
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				passmat = rs.getString(1);
			}
			if (passmat.equals(pass)) {
				pw.print("yes");
			} else
				pw.print("no");
			rs.close();
			pstm.close();
			conn.close();
		} catch (Exception e) {
		}
		pw.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
