package myservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myclass.Sqlconn;

/**
 * Servlet implementation class Se_CheckName
 */
@WebServlet("/Se_CheckName")
public class Se_CheckName extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Se_CheckName() {
        super();
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
    	super.init(config);
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String userName = request.getParameter("username");
		PrintWriter pw = response.getWriter();
		try {
			Connection conn = new Sqlconn().myconn();
			PreparedStatement pstm = conn.prepareStatement("select count(*) from users where userName=?");
			pstm.setString(1, userName);
			ResultSet rSet = pstm.executeQuery();
			rSet.next();
			if (Integer.parseInt(rSet.getString(1)) == 0)
				pw.print("yes");
			else {
				pw.print(userName);
			}
			rSet.close();
			pstm.close();
			conn.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		pw.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
