package mybean;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import myclass.Sqlconn;
public class CheckName extends ActionSupport {

	private static final long serialVersionUID = 1L;

	public void ajaxexecute() throws IOException {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
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
		pw.flush();
		pw.close();
	}

}
