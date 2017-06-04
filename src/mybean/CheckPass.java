package mybean;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import myclass.Sqlconn;

public class CheckPass extends ActionSupport {

	private static final long serialVersionUID = 1L;

	public void ajaxexecute() throws IOException {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
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
		pw.flush();
		pw.close();
	}
}
